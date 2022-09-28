import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key? key,
    required this.appBar,
    required this.appBarBackgroundColor,
    required this.expandedSpace,
    required this.openedSystemUiOverlayStyle,
    required this.closedSystemUiOverlayStyle,
    required this.iconBeginColor,
    required this.iconEndColor,
    this.toolbarHeight = 56,
    this.expandedHeight = 300,
  }) : super(key: key);

  /// Don't set background color for app bar
  /// 앱바에 배경색을 설정하지 마세요
  final Widget appBar;

  /// The background color of the app bar
  /// 앱바의 배경색
  final Color appBarBackgroundColor;

  /// This is the widget that will fill the CustomSliverAppBar
  /// CustomSliverAppBar를 가득 채울 위젯입니다
  final Widget expandedSpace;

  /// This is the text color of the system status bar when the app bar is open.
  /// 앱바가 열렸을 때의 시스템 상태바의 글자색 입니다
  final SystemUiOverlayStyle openedSystemUiOverlayStyle;

  /// This is the text color of the system status bar when the app bar is close.
  /// 앱바가 닫혔을 때의 시스템 상태바의 글자색 입니다
  final SystemUiOverlayStyle closedSystemUiOverlayStyle;

  /// toolbarHeight
  final double toolbarHeight;

  /// CustomSliverAppBar height
  final double expandedHeight;

  final Color iconBeginColor;
  final Color iconEndColor;

  @override
  Widget build(BuildContext context) {
    return CustomSliver(
      toolbarHeight: toolbarHeight,
      expandedHeight: expandedHeight,
      builder: (context, offset, statusBarHeight) {
        // System status bar text color change!
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: offset > 0.5 ? openedSystemUiOverlayStyle : closedSystemUiOverlayStyle,
          child: Stack(
            children: [
              _expnadedSpace(),
              _appBar(statusBarHeight, offset),
            ],
          ),
        );
      },
    );
  }

  Widget _expnadedSpace() {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      reverse: true,
      child: SizedBox(
        width: double.infinity,
        height: expandedHeight,
        child: expandedSpace,
      ),
    );
  }

  Widget _appBar(double statusBarHeight, double offset) {
    return Theme(
      data: ThemeData(
        iconTheme: IconThemeData(
          color: ColorTween(begin: iconBeginColor, end: iconEndColor).lerp(1 - offset),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: toolbarHeight + statusBarHeight,
        color: appBarBackgroundColor.withOpacity(1 - offset),
        padding: EdgeInsets.only(top: statusBarHeight),
        child: appBar,
      ),
    );
  }
}

typedef CustomSliverWidgetBuilder = Widget Function(BuildContext context, double offset, double statusBarHeight);

/// 스크롤 포지션에 따라 슬리버 앱바 그려줄 윗젯
/// 메인 화면에서 해당 슬리버에 들어갈 컴포넌트 구현해서 사용
class CustomSliver extends StatelessWidget {
  const CustomSliver({
    Key? key,
    required this.builder,
    required this.expandedHeight,
    required this.toolbarHeight,
  }) : super(key: key);

  /// offset (0.0 ~ 1.0) 에 따라 리턴할 위젯
  final CustomSliverWidgetBuilder builder;

  /// 최대 크기
  final double expandedHeight;

  /// 툴바 크기(최소크기)
  final double toolbarHeight;

  @override
  Widget build(BuildContext context) {
    final topPaddingHeight = MediaQuery.of(context).padding.top;

    return SliverPersistentHeader(
      pinned: true,
      delegate: _CustomSliverBuilderDelegate(
        builder: builder,
        expandedHeight: expandedHeight - topPaddingHeight,
        toolbarHeight: toolbarHeight,
        topPaddingHeight: topPaddingHeight,
      ),
    );
  }
}

class _CustomSliverBuilderDelegate extends SliverPersistentHeaderDelegate {
  _CustomSliverBuilderDelegate({
    required this.builder,
    required this.topPaddingHeight,
    required this.expandedHeight,
    required this.toolbarHeight,
  });

  /// offset (0.0 ~ 1.0) 에 따라 리턴할 위젯
  final CustomSliverWidgetBuilder builder;

  /// 최대 크기
  final double expandedHeight;

  /// 툴바 크기(최소크기)
  final double toolbarHeight;

  /// StatusBar
  final double topPaddingHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final bodyHeight = expandedHeight - toolbarHeight;
    // toolBarHeight 만큼 offset이 더 증가 해서 min으로 처리!
    final double offset = 1 - min(1, shrinkOffset / bodyHeight);
    return builder(context, offset, topPaddingHeight);
  }

  @override
  double get maxExtent => expandedHeight + topPaddingHeight;

  @override
  double get minExtent => toolbarHeight + topPaddingHeight;

  @override
  bool shouldRebuild(_CustomSliverBuilderDelegate oldDelegate) => true;
}
