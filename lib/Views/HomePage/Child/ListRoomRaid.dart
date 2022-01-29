// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_raid/Models/RoomRaid/RoomRaidModel.dart';
import 'package:go_raid/Views/HomePage/Child/SubInfoRoomRaid.dart';

class ListRoomRaid extends StatefulWidget {
  final List<RoomRaid> lstRoomRaid;

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
  late bool _fullRoom = false;

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
        _fullRoom = widget.lstRoomRaid[index].trainers.length == 5;

        return ListTile(
          enabled: !_fullRoom,
          leading: const FlutterLogo(),
          title: Text(widget.lstRoomRaid[index].boss.name),
          subtitle: SubInfoRoomRaid(roomRaid: widget.lstRoomRaid[index]),
          trailing: _fullRoom
              ? null
              : TextButton(onPressed: _goRoom, child: const Text("Go")),
          onTap: _fullRoom ? null : _goRoom,
        );
      },
    );
  }

  //--------------------------------------------
  //Private function
  //--------------------------------------------
  _goRoom() {}
}
