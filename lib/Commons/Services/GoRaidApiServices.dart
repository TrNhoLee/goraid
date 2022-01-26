// ignore_for_file: file_names
import 'package:go_raid/Commons/Services/CommonApiServices.dart';
import 'package:go_raid/Commons/Services/GoRaidApiResponse.dart';

class GoRaidApiServices extends CommonApiServices<GoRaidApiResponse> {
  @override
  GoRaidApiResponse fromJson(json) {
    return GoRaidApiResponse.fromJson(json);
  }
}
