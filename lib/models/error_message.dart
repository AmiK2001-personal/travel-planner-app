class ErrorMessage {
  String? code;
  String message;
  dynamic? data;
  ErrorMessage({
    this.code,
    required this.message,
    this.data,
  });
}
