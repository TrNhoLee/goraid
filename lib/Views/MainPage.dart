// ignore_for_file: file_names
import 'package:go_raid/Commons/Constants/AppConsts.dart';
import 'package:go_raid/Views/AccountPage/AccountPage.dart';
import 'package:go_raid/Views/HomePage/HomePage.dart';
import 'package:go_raid/Views/NotificationPage/NotificationPage.dart';
import 'package:go_raid/Views/SearchPage/SearchPage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //--------------------------------------------
  //ViewModel
  //--------------------------------------------

  //--------------------------------------------
  //Properties
  //--------------------------------------------
  late List<Widget> _mainScreens;
  late int _selectedIndex;

  //--------------------------------------------
  //Initialize
  //--------------------------------------------
  @override
  void initState() {
    _selectedIndex = 0;
    _mainScreens = [
      const HomePage(),
      const SearchPage(),
      const NotificationPage(),
      const AccountPage()
    ];
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  //--------------------------------------------
  //Widget
  //--------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: _mainScreens,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: lblHome,
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: lblSearch,
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.mark_chat_unread),
              label: lblNoti,
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: lblAccount,
              backgroundColor: Colors.grey),
        ],
        onTap: _bottomBarItemTapped,
      ),
    );
  }

  //--------------------------------------------
  //Private function
  //--------------------------------------------
  _bottomBarItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
