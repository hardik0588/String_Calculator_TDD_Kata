class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    List<String> delimiters = [',', '\n'];
    String numberSection = numbers;

    if (numbers.startsWith('//')) {
      final delimiterEnd = numbers.indexOf('\n');
      final customDelimiter = numbers.substring(2, delimiterEnd);
      delimiters.add(customDelimiter);
      numberSection = numbers.substring(delimiterEnd + 1);
    }
    final pattern = RegExp(delimiters.map(RegExp.escape).join('|'));
    final parts = numberSection.split(pattern);
    final validParts = parts.where((e) => e.trim().isNotEmpty).map(int.parse);
    return validParts.reduce((a, b) => a + b);
  }

}
