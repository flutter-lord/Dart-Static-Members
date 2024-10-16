class Math {
  static num max(num a, num b) {
    return (a > b) ? a : b;
  }

  static num min(num a, num b) {
    return (a < b) ? a : b;
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'The value for a = ${max(2, 3)} and b = ${min(2, 3)}';
  }
}