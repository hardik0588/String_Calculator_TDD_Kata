class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    final parts = numbers.split(',');
    final validParts = parts.where((e) => e.trim().isNotEmpty).map(int.parse);
    return validParts.reduce((a, b) => a + b);
  }
}
