// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_raid/ViewModels/Picture/PictureViewModel.dart';
import 'package:go_raid/Views/HomePage/Child/ListPicture.dart';
import 'package:go_raid/Commons/Helpers/DialogHelper.dart';
import 'package:go_raid/Views/AccountPage/Child/BlockSearch.dart';
import 'package:go_raid/Views/AccountPage/Child/InfoAccount.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  //--------------------------------------------
  //ViewModel
  //--------------------------------------------
  late PictureViewModel _pictureViewModel;

  //--------------------------------------------
  //Properties
  //--------------------------------------------
  late List<String> _listYourPicture;
  late List<String> _listPictureSaved;

  //--------------------------------------------
  //Initialize
  //--------------------------------------------
  @override
  void initState() {
    _pictureViewModel = PictureViewModel();
    _listYourPicture = _pictureViewModel.getListOfYourPictures();
    _listPictureSaved = _pictureViewModel.getListOfSavedImages();
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
      body: Container(
        // padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: _createBodyAccount(),
      ),
    );
  }

  //--------------------------------------------
  //Private function
  //--------------------------------------------
  _createBodyAccount() {
    return RefreshIndicator(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const InfoAccount(),
            const SizedBox(height: 20),
            BlockSearch(
              onAddClicked: _searchAddClick,
              onFilterClicked: _filterSearchClick,
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Your pictures",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
            ),
            const SizedBox(height: 20),
            ListPicture(lstPictureUrl: _listYourPicture),
            const SizedBox(height: 10),
            const Divider(color: Colors.white, height: 1),
            const SizedBox(height: 10),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("List of saved images",
                    style: TextStyle(color: Colors.white, fontSize: 25))),
            const SizedBox(height: 20),
            ListPicture(lstPictureUrl: _listPictureSaved),
          ],
        ),
      ),
      onRefresh: _accountRefresh,
    );
  }

  Future<void> _accountRefresh() async {
    // ignore: avoid_print
    print("aaa");
    setState(() {});
  }

  void _searchAddClick() {
    DialogHelper.showDialogBottom(context, lstItem: []);
  }

  void _filterSearchClick() {
    DialogHelper.showDialogBottom(context, lstItem: []);
  }
}
