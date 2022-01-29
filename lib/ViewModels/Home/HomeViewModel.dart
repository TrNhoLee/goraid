// ignore_for_file: file_names
import 'package:go_raid/Commons/Constants/AppConsts.dart';
import 'package:go_raid/Models/RoomRaid/RoomRaidModel.dart';

class HomeViewModel {
  //--------------------------------------------
  //Properties
  //--------------------------------------------

  //--------------------------------------------
  //Function
  //--------------------------------------------
  void dispose() {}

  List<RoomRaid> getListRoomAllBoss() {
    return [
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(0), createAt: 12345, boss: Boss(id: 6, name: "Beldum", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(3), createAt: 12345, boss: Boss(id: 6, name: "Beldum", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(2), createAt: 12345, boss: Boss(id: 4, name: "Dewgong", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(1), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(2), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(1), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(3), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(2), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(2), createAt: 12345, boss: Boss(id: 2, name: "Mega Aerodactyl", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(4), createAt: 12345, boss: Boss(id: 6, name: "Beldum", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(3), createAt: 12345, boss: Boss(id: 5, name: "Piloswine", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(0), createAt: 12345, boss: Boss(id: 3, name: "Druddigon", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(2), createAt: 12345, boss: Boss(id: 3, name: "Druddigon", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(1), createAt: 12345, boss: Boss(id: 3, name: "Druddigon", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(2), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(0), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(1), createAt: 12345, boss: Boss(id: 2, name: "Mega Aerodactyl", urlIcon: "")),
    ];
  }

  List<RoomRaid> getListRoomBossOneStar() {
    return [
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(0), createAt: 12345, boss: Boss(id: 6, name: "Beldum", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(3), createAt: 12345, boss: Boss(id: 6, name: "Beldum", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(4), createAt: 12345, boss: Boss(id: 6, name: "Beldum", urlIcon: "")),
    ];
  }

  List<RoomRaid> getListRoomBossThreeStar() {
    return [
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(2), createAt: 12345, boss: Boss(id: 4, name: "Dewgong", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(3), createAt: 12345, boss: Boss(id: 5, name: "Piloswine", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(0), createAt: 12345, boss: Boss(id: 3, name: "Druddigon", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(2), createAt: 12345, boss: Boss(id: 3, name: "Druddigon", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(1), createAt: 12345, boss: Boss(id: 3, name: "Druddigon", urlIcon: "")),
    ];
  }

  List<RoomRaid> getListRoomBossFiveStar() {
    return [
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(1), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(2), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(1), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(3), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(2), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(2), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(0), createAt: 12345, boss: Boss(id: 1, name: "Regice", urlIcon: "")),
    ];
  }

  List<RoomRaid> getListRoomBossMega() {
    return [
      RoomRaid(host: _createHost(), trainers: _createTrainers(), gym: Gym.fromJson(2), createAt: 12345, boss: Boss(id: 2, name: "Mega Aerodactyl", urlIcon: "")),
      RoomRaid(host: _createHost(), trainers: _createTrainersFull(), gym: Gym.fromJson(1), createAt: 12345, boss: Boss(id: 2, name: "Mega Aerodactyl", urlIcon: "")),
    ];
  }

  List<RoomRaid> getListRoomBossWithNumTab(int numTab) {
    List<RoomRaid> result = [];

    switch(numTab) {
      case allTab:
        result = getListRoomAllBoss();
        break;
      case oneTab:
        result = getListRoomBossOneStar();
        break;
      case threeTab:
        result = getListRoomBossThreeStar();
        break;
      case fiveTab:
        result = getListRoomBossFiveStar();
        break;
      case megaTab:
        result = getListRoomBossMega();
        break;
      default:
        break;
    }

    return result;
  }

  //--------------------------------------------
  //Private function
  //--------------------------------------------
  Trainer _createHost() {
    return const Trainer(id: 1, level: 50, name: "VTNGRN", trainerCode: "123456789");
  }

  List<Trainer> _createTrainers() {
    return [
      const Trainer(id: 2, level: 50, name: "VTNGRN2", trainerCode: "123456789"),
      const Trainer(id: 3, level: 50, name: "VTNGRN3", trainerCode: "123456789"),
      const Trainer(id: 4, level: 50, name: "VTNGRN4", trainerCode: "123456789"),
      const Trainer(id: 5, level: 50, name: "VTNGRN5", trainerCode: "123456789"),
    ];
  }

  List<Trainer> _createTrainersFull() {
    return [
      const Trainer(id: 2, level: 50, name: "VTNGRN2", trainerCode: "123456789"),
      const Trainer(id: 3, level: 50, name: "VTNGRN3", trainerCode: "123456789"),
      const Trainer(id: 4, level: 50, name: "VTNGRN4", trainerCode: "123456789"),
      const Trainer(id: 5, level: 50, name: "VTNGRN5", trainerCode: "123456789"),
      const Trainer(id: 6, level: 50, name: "VTNGRN6", trainerCode: "123456789"),
    ];
  }

  //--------------------------------------------
  //Static function
  //--------------------------------------------
}
