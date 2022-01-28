// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_raid/Views/HomePage/Child/CountdownTimer.dart';

class SubInfoRoomRaid extends StatelessWidget {
  final String roomRaid;

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
    return Row(
      children: [
        const Icon(Icons.timer),
        const SizedBox(width: 2),
        const CountdownTimer(seconds: 65),
        const SizedBox(width: 15),
        const Icon(Icons.supervisor_account),
        const Text("6"),
        const SizedBox(width: 15),
        Container(
          width: 10,
          height: 10,
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.rectangle,
          ),
        ),
        const SizedBox(width: 5),
        const Text("Mystic")
      ],
    );
  }

//--------------------------------------------
//Private function
//--------------------------------------------
}
