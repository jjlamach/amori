class Assets {
  static const String splashscreen = 'lib/assets/splashscreen.jpeg';
  static const String logo2 = 'lib/assets/hd_logo.png';
}

extension EmailValidation on String {
  bool isValidEmail() {
    final RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(this);
  }
}
