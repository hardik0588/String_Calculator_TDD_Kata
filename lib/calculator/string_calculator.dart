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
    final validParts = parts.where((e) => e.trim().isNotEmpty);

    List<int> negatives = [];
    int sum = 0;

    for (final part in validParts) {
      final number = int.parse(part);
      if (number < 0) {
        negatives.add(number);
      } else {
        sum += number;
      }
    }
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }
    return sum;
  }
}
