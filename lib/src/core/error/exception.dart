class LocalException implements Exception {
  const LocalException({
    required this.description,
  });

  final String description;
}

class CacheException implements Exception {
  const CacheException({
    required this.description,
  });

  final String description;
}
