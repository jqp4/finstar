extension StringX on String {
  String removeAllSpaces() => replaceAll(
        RegExp(r'\s+'),
        '',
      );

  String removeTrailingZeros() => replaceAll(
        RegExp(r'([.]*0+)(?!.*\d)'),
        '',
      );

  String spaceSeparateNumbers() => replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
        (m) => '${m[1]} ',
      );
}
