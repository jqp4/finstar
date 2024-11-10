import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  const Failure(
    this.description,
    this.error,
    this.stackTrace,
  );

  final String description;
  final Object error;
  final StackTrace stackTrace;

  @override
  List<Object> get props {
    return [
      description,
      error,
      stackTrace,
    ];
  }
}

final class LocalFailure extends Failure {
  const LocalFailure(super.description, super.error, super.stackTrace);
}

final class UnknownFailure extends Failure {
  const UnknownFailure(super.description, super.error, super.stackTrace);
}

final class CacheFailure extends Failure {
  const CacheFailure(super.description, super.error, super.stackTrace);
}
