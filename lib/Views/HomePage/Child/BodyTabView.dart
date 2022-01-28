// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_raid/ViewModels/Home/HomeViewModel.dart';
import 'package:go_raid/Views/HomePage/Child/ListRoomRaid.dart';

class BodyTabView extends StatefulWidget {
  final int numTab;

  const BodyTabView({Key? key, required this.numTab}) : super(key: key);

  @override
  _BodyTabViewState createState() => _BodyTabViewState();
}

class _BodyTabViewState extends State<BodyTabView>
    with AutomaticKeepAliveClientMixin<BodyTabView> {
  //--------------------------------------------
  //ViewModel
  //--------------------------------------------
  late HomeViewModel _homeViewModel;

  //--------------------------------------------
  //Properties
  //--------------------------------------------
  late List<String> _listRoom;

  //--------------------------------------------
  //Initialize
  //--------------------------------------------
  @override
  void initState() {
    _homeViewModel = HomeViewModel();
    _listRoom = _homeViewModel.getListRoomBossWithNumTab(widget.numTab);
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
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: ListRoomRaid(lstRoomRaid: _listRoom),
      onRefresh: _lstPictureRefresh,
    );
  }

  //--------------------------------------------
  //Private function
  //--------------------------------------------
  Future<void> _lstPictureRefresh() async {
    _listRoom = _homeViewModel.getListRoomBossWithNumTab(widget.numTab);

    setState(() {
      _listRoom;
    });
  }

  @override
  bool get wantKeepAlive => true;
}
