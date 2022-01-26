// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_raid/Commons/Constants/AppConsts.dart';
import 'package:go_raid/ViewModels/Home/HomeViewModel.dart';
import 'package:go_raid/Views/HomePage/Child/ListPicture.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //--------------------------------------------
  //ViewModel
  //--------------------------------------------
  late HomeViewModel _homeViewModel;

  //--------------------------------------------
  //Properties
  //--------------------------------------------
  late List<String> _listUrlPicture;

  //--------------------------------------------
  //Initialize
  //--------------------------------------------
  @override
  void initState() {
    _homeViewModel = HomeViewModel();
    _listUrlPicture = _homeViewModel.getListPicture();
    super.initState();
  }

  @override
  void dispose() {
    _homeViewModel.dispose();
    super.dispose();
  }

  //--------------------------------------------
  //Widget
  //--------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: OutlinedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          child:
              const Text(lblButtonAll, style: TextStyle(color: Colors.black)),
          onPressed: _appBarBtnAllPress,
        ),
      ),
      body: Center(
        child: RefreshIndicator(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: ListPicture(lstPictureUrl: _listUrlPicture),
          ),
          onRefresh: _lstPictureRefresh,
        ),
      ),
    );
  }

  //--------------------------------------------
  //Private function
  //--------------------------------------------

  Future<void> _lstPictureRefresh() async {
    _listUrlPicture = _homeViewModel.refreshListPicture(_listUrlPicture);

    setState(() {
      _listUrlPicture;
    });
  }

  _appBarBtnAllPress() {}
}
