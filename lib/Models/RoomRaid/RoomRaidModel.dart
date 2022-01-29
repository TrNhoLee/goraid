// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_raid/Commons/Constants/AppConsts.dart';

class RoomRaid {
  final Trainer host;
  final List<Trainer> trainers;
  final int createAt;
  final Boss boss;
  final Gym gym;

  RoomRaid(
      {required this.host,
      required this.trainers,
      required this.createAt,
      required this.boss,
      required this.gym});

  factory RoomRaid.fromJson(Map<dynamic, dynamic> json) {
    return RoomRaid(
      host: Trainer.fromJson(json["host"]),
      trainers: (json["trainers"] as List)
          .map((trainer) => Trainer.fromJson(trainer))
          .toList(),
      boss: Boss.fromJson(json["boss"]),
      createAt: int.parse(json["create_at"]),
      gym: Gym.fromJson(int.parse(json["gym"])),
    );
  }
}

class Trainer {
  final int id;
  final String name;
  final String trainerCode;
  final int level;

  const Trainer({
    required this.id,
    required this.name,
    required this.trainerCode,
    required this.level,
  });

  factory Trainer.fromJson(Map<dynamic, dynamic> json) {
    return Trainer(
        id: json["id"],
        name: json["name"],
        trainerCode: json["code"],
        level: json["level"]);
  }
}

class Boss {
  final int id;
  final String name;
  final String urlIcon;

  Boss({required this.id, required this.name, required this.urlIcon});

  factory Boss.fromJson(Map<dynamic, dynamic> json) {
    return Boss(
      id: json["id"],
      name: json["name"],
      urlIcon: json["icon"]
    );
  }
}

class Gym {
  final Color color;
  final String name;

  Gym({required this.color, required this.name});

  factory Gym.fromJson(int gymType) {
    var gymColor = Colors.white;
    var gymName = gymNoneName;

    switch(gymType) {
      case gymRed:
        gymColor = Colors.red;
        gymName = gymRedName;
        break;
      case gymBlue:
        gymColor = Colors.blue;
        gymName = gymBlueName;
        break;
      case gymYellow:
        gymColor = Colors.yellow;
        gymName = gymYellowName;
        break;
      default:
        break;
    }

    return Gym(
      color: gymColor,
      name: gymName,
    );
  }
}
