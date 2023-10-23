class Assets {
  static const emotions = [
    'assets/happy.svg',
    'assets/sad.svg',
    'assets/relaxed.svg',
    'assets/anxious.svg',
    'assets/angry.svg',
    'assets/normal.svg',
  ];

  static const String iconHeart = 'assets/icon _heart_.svg';
  static const String iconMic = 'assets/icon_microphone.svg';
  static const String iconPencil = 'assets/icon _pencil_.svg';
  static const String trashIcon = 'assets/trash_icon.png';
  static const String husky = 'assets/husky.svg';
}

extension EmailValidation on String {
  bool isValidEmail() {
    final RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(this);
  }
}

extension DateFormatter on DateTime {
  String formatMe() {
    return '${this.year}-${this.month.toString().padLeft(2, '0')}-${this.day.toString().padLeft(2, '0')}';
  }
}
