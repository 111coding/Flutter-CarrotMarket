import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainBottomNav extends StatelessWidget {
  const MainBottomNav({
    super.key,
    required this.selectedIndex,
    this.onIndexChanged,
  });

  final int selectedIndex;

  final void Function(int index)? onIndexChanged;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black54,
      onTap: onIndexChanged,
      items: const [
        BottomNavigationBarItem(label: '홈', icon: Icon(CupertinoIcons.home)),
        BottomNavigationBarItem(label: '채팅', icon: Icon(CupertinoIcons.chat_bubble_2)),
        BottomNavigationBarItem(label: '나의 당근', icon: Icon(CupertinoIcons.person)),
      ],
    );
  }
}
