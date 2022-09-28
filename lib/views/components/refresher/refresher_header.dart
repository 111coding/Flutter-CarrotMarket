import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefresherHeader extends StatelessWidget {
  const RefresherHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      refreshStyle: RefreshStyle.Follow,
      builder: (context, mode) {
        if (mode == RefreshStatus.refreshing || mode == RefreshStatus.completed) {
          return const SizedBox(
            height: 60.0,
            child: SizedBox(
              height: 20.0,
              width: 20.0,
              child: CupertinoActivityIndicator(color: Colors.orange),
            ),
          );
        }
        return Container();
      },
    );
  }
}
