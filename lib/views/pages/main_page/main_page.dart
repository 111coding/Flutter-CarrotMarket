import 'package:flutter/material.dart';

import 'package:flutter_carrotmarket/views/pages/main_page/components/main_app_bar.dart';
import 'package:flutter_carrotmarket/views/pages/main_page/components/main_body.dart';
import 'package:flutter_carrotmarket/views/pages/main_page/components/main_bottom_nav.dart';
import 'package:flutter_carrotmarket/views/pages/main_page/components/main_floating_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void selectedIndexChanged(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(_selectedIndex),
      body: MainBody(selectedIndex: _selectedIndex),
      bottomNavigationBar: MainBottomNav(
        selectedIndex: _selectedIndex,
        onIndexChanged: selectedIndexChanged,
      ),
      floatingActionButton: mainFlotingButton(_selectedIndex),
    );
  }
}
