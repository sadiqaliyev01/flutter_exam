extension IntExtension on int? {
  bool get isSuccess{
    return this! > 199 && this! < 300;
  }
}