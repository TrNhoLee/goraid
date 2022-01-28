// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_raid/Views/HomePage/Child/SubInfoRoomRaid.dart';

class ListRoomRaid extends StatefulWidget {
  final List<String> lstRoomRaid;

  const ListRoomRaid({Key? key, required this.lstRoomRaid}) : super(key: key);

  @override
  _ListRoomRaidState createState() => _ListRoomRaidState();
}

class _ListRoomRaidState extends State<ListRoomRaid> {
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
    return ListView.builder(
      itemCount: widget.lstRoomRaid.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const FlutterLogo(),
          title: const Text("RauMuongBeTi"),
          subtitle: SubInfoRoomRaid(roomRaid: widget.lstRoomRaid[index]),
          trailing: TextButton(onPressed: _goRoom, child: const Text("Go")),
        );
      },
    );
  }

  //--------------------------------------------
  //Private function
  //--------------------------------------------
  _goRoom() {}
}
