double parseToDouble(String input) {
  try {
    return double.parse(input);
  } catch (e) {
    print('Error parsing "$input" to double: $e');
    return 0.0; // Or return a default value, e.g., 0.0
  }
}