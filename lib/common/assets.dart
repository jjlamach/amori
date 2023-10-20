class Assets {
  static const emotions = [
    'assets/happy.svg',
    'assets/sad.svg',
    'assets/relaxed.svg',
    'assets/anxious.svg',
    'assets/angry.svg',
    'assets/normal.svg',
  ];
}

extension EmailValidation on String {
  bool isValidEmail() {
    final RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(this);
  }
}
