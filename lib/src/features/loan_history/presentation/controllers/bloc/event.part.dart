part of 'bloc.dart';

@freezed
class LoanHistoryEvent with _$LoanHistoryEvent {
  const factory LoanHistoryEvent.read() = _Read;

  const factory LoanHistoryEvent.delete(int storageId) = _Delete;
}
