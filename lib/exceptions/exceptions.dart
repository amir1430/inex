class InexException implements Exception {
  const InexException({required this.message});

  final String message;

  @override
  String toString() => message;
}

class DataSourceHaveDependencyException extends InexException {
  const DataSourceHaveDependencyException({
    super.message = 'Data source have dependency exception',
  });
}
