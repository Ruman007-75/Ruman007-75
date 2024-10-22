class NetworkResponse {
  final bool isSuccess;
  final int statusCode;

  dynamic responseDate;
  String errorMessage;

  NetworkResponse(
      {required this.isSuccess,
      required this.statusCode,
      this.responseDate,
      this.errorMessage = 'Something went wrong'});
}
