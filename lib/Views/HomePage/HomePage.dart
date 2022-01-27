// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_raid/Commons/Constants/AppConsts.dart';
import 'package:go_raid/Views/HomePage/Child/BodyTabView.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //--------------------------------------------
  //ViewModel
  //--------------------------------------------

  //--------------------------------------------
  //Properties
  //--------------------------------------------

  //--------------------------------------------
  //Initialize
  //--------------------------------------------
  @override
  void initState() {
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
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: TextButton.icon(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            icon: const Icon(Icons.account_circle),
            label: const Text(lblButtonAll),
            onPressed: _appBarBtnProfilePress,
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "All",
              ),
              Tab(
                text: "1",
              ),
              Tab(
                text: "3",
              ),
              Tab(
                text: "5",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: BodyTabView(numTab: allTab),
            ),
            Center(
              child: BodyTabView(numTab: oneTab),
            ),
            Center(
              child: BodyTabView(numTab: threeTab),
            ),
            Center(
              child: BodyTabView(numTab: fiveTab),
            ),
          ],
        ),
      ),
    );
  }

  //--------------------------------------------
  //Private function
  //--------------------------------------------

  _appBarBtnProfilePress() {}
}
