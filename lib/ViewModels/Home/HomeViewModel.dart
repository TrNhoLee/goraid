// ignore_for_file: file_names
import 'package:go_raid/Commons/Constants/AppConsts.dart';

class HomeViewModel {
  //--------------------------------------------
  //Properties
  //--------------------------------------------

  //--------------------------------------------
  //Function
  //--------------------------------------------
  void dispose() {}

  List<String> getListRoomAllBoss() {
    return [
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
    ];
  }

  List<String> getListRoomBossOneStar() {
    return [
      "AA",
      "AA",
      "AA",
    ];
  }

  List<String> getListRoomBossThreeStar() {
    return [
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
    ];
  }

  List<String> getListRoomBossFiveStar() {
    return [
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
      "AA",
    ];
  }

  List<String> getListRoomBossMega() {
    return [
      "AA",
      "AA",
    ];
  }

  List<String> getListRoomBossWithNumTab(int numTab) {
    List<String> result = [];

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

//--------------------------------------------
//Static function
//--------------------------------------------
}
