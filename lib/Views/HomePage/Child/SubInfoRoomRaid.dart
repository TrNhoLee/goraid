// ignore_for_file: file_names
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_raid/Models/RoomRaid/RoomRaidModel.dart';
import 'package:go_raid/Views/HomePage/Child/CountdownTimer.dart';

class SubInfoRoomRaid extends StatelessWidget {
  final RoomRaid roomRaid;

  const SubInfoRoomRaid({Key? key, required this.roomRaid}) : super(key: key);

  //--------------------------------------------
  //ViewModel
  //--------------------------------------------

  //--------------------------------------------
  //Properties
  //--------------------------------------------

  //--------------------------------------------
  //Widget
  //--------------------------------------------
  @override
  Widget build(BuildContext context) {
    final _random = Random();
    int seconds = _random.nextInt(599);

    return Row(
      children: [
        const Icon(Icons.timer),
        const SizedBox(width: 2),
        CountdownTimer(seconds: seconds),
        const SizedBox(width: 15),
        const Icon(Icons.supervisor_account),
        Text((1 + roomRaid.trainers.length).toString()),
        const SizedBox(width: 15),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: roomRaid.gym.color,
            shape: BoxShape.rectangle,
          ),
        ),
        const SizedBox(width: 5),
        Text(roomRaid.gym.name)
      ],
    );
  }

//--------------------------------------------
//Private function
//--------------------------------------------
}
