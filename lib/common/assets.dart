class Assets {
  static const String splashscreen = 'lib/assets/splashscreen.jpeg';
  static const String logo2 = 'lib/assets/hd_logo.png';
  static const emotions = [
    'lib/assets/happy.svg',
    'lib/assets/sad.svg',
    'lib/assets/relaxed.svg',
    'lib/assets/anxious.svg',
    'lib/assets/angry.svg',
  ];
}

extension EmailValidation on String {
  bool isValidEmail() {
    final RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(this);
  }
}
