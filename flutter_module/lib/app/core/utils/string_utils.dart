extension StringUtil on String {
  String defaultString({String defaultStr = ''}) => this ?? defaultStr;

  bool isNullOrEmpty() {
    final s = this;
    if (s == null || isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool isNotNullOrEmpty() => !isNullOrEmpty();
}
