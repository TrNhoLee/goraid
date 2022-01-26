// ignore_for_file: file_names
class GoRaidApiResponse {
  // -------------------------------------------------------
  // Field defined
  // -------------------------------------------------------
  int errorCode;
  String errorMsg;
  dynamic data;

  // -------------------------------------------------------
  // Functions
  // -------------------------------------------------------
  GoRaidApiResponse({required this.errorCode, required this.errorMsg, this.data});

  factory GoRaidApiResponse.fromJson(Map<dynamic, dynamic> json) {
    return GoRaidApiResponse(
      errorCode: json['error_code'],
      errorMsg: json['error_msg'].toString(),
      data: json['data'],
    );
  }
}
