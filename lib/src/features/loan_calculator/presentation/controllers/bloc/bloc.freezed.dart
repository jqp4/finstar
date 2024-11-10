// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoanCalculatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) updateAmount,
    required TResult Function(double? value) updateInterestRate,
    required TResult Function(int? value) updateTermInMonths,
    required TResult Function(PaymentType? value) updatePaymentType,
    required TResult Function() calculatePayments,
    required TResult Function() saveForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? updateAmount,
    TResult? Function(double? value)? updateInterestRate,
    TResult? Function(int? value)? updateTermInMonths,
    TResult? Function(PaymentType? value)? updatePaymentType,
    TResult? Function()? calculatePayments,
    TResult? Function()? saveForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? updateAmount,
    TResult Function(double? value)? updateInterestRate,
    TResult Function(int? value)? updateTermInMonths,
    TResult Function(PaymentType? value)? updatePaymentType,
    TResult Function()? calculatePayments,
    TResult Function()? saveForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAmount value) updateAmount,
    required TResult Function(_UpdateInterestRate value) updateInterestRate,
    required TResult Function(_UpdateTermInMonths value) updateTermInMonths,
    required TResult Function(_UpdatePaymentType value) updatePaymentType,
    required TResult Function(_CalculatePayments value) calculatePayments,
    required TResult Function(_SaveForm value) saveForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAmount value)? updateAmount,
    TResult? Function(_UpdateInterestRate value)? updateInterestRate,
    TResult? Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult? Function(_UpdatePaymentType value)? updatePaymentType,
    TResult? Function(_CalculatePayments value)? calculatePayments,
    TResult? Function(_SaveForm value)? saveForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAmount value)? updateAmount,
    TResult Function(_UpdateInterestRate value)? updateInterestRate,
    TResult Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult Function(_UpdatePaymentType value)? updatePaymentType,
    TResult Function(_CalculatePayments value)? calculatePayments,
    TResult Function(_SaveForm value)? saveForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanCalculatorEventCopyWith<$Res> {
  factory $LoanCalculatorEventCopyWith(
          LoanCalculatorEvent value, $Res Function(LoanCalculatorEvent) then) =
      _$LoanCalculatorEventCopyWithImpl<$Res, LoanCalculatorEvent>;
}

/// @nodoc
class _$LoanCalculatorEventCopyWithImpl<$Res, $Val extends LoanCalculatorEvent>
    implements $LoanCalculatorEventCopyWith<$Res> {
  _$LoanCalculatorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateAmountImplCopyWith<$Res> {
  factory _$$UpdateAmountImplCopyWith(
          _$UpdateAmountImpl value, $Res Function(_$UpdateAmountImpl) then) =
      __$$UpdateAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? value});
}

/// @nodoc
class __$$UpdateAmountImplCopyWithImpl<$Res>
    extends _$LoanCalculatorEventCopyWithImpl<$Res, _$UpdateAmountImpl>
    implements _$$UpdateAmountImplCopyWith<$Res> {
  __$$UpdateAmountImplCopyWithImpl(
      _$UpdateAmountImpl _value, $Res Function(_$UpdateAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$UpdateAmountImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UpdateAmountImpl implements _UpdateAmount {
  const _$UpdateAmountImpl(this.value);

  @override
  final int? value;

  @override
  String toString() {
    return 'LoanCalculatorEvent.updateAmount(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAmountImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAmountImplCopyWith<_$UpdateAmountImpl> get copyWith =>
      __$$UpdateAmountImplCopyWithImpl<_$UpdateAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) updateAmount,
    required TResult Function(double? value) updateInterestRate,
    required TResult Function(int? value) updateTermInMonths,
    required TResult Function(PaymentType? value) updatePaymentType,
    required TResult Function() calculatePayments,
    required TResult Function() saveForm,
  }) {
    return updateAmount(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? updateAmount,
    TResult? Function(double? value)? updateInterestRate,
    TResult? Function(int? value)? updateTermInMonths,
    TResult? Function(PaymentType? value)? updatePaymentType,
    TResult? Function()? calculatePayments,
    TResult? Function()? saveForm,
  }) {
    return updateAmount?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? updateAmount,
    TResult Function(double? value)? updateInterestRate,
    TResult Function(int? value)? updateTermInMonths,
    TResult Function(PaymentType? value)? updatePaymentType,
    TResult Function()? calculatePayments,
    TResult Function()? saveForm,
    required TResult orElse(),
  }) {
    if (updateAmount != null) {
      return updateAmount(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAmount value) updateAmount,
    required TResult Function(_UpdateInterestRate value) updateInterestRate,
    required TResult Function(_UpdateTermInMonths value) updateTermInMonths,
    required TResult Function(_UpdatePaymentType value) updatePaymentType,
    required TResult Function(_CalculatePayments value) calculatePayments,
    required TResult Function(_SaveForm value) saveForm,
  }) {
    return updateAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAmount value)? updateAmount,
    TResult? Function(_UpdateInterestRate value)? updateInterestRate,
    TResult? Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult? Function(_UpdatePaymentType value)? updatePaymentType,
    TResult? Function(_CalculatePayments value)? calculatePayments,
    TResult? Function(_SaveForm value)? saveForm,
  }) {
    return updateAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAmount value)? updateAmount,
    TResult Function(_UpdateInterestRate value)? updateInterestRate,
    TResult Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult Function(_UpdatePaymentType value)? updatePaymentType,
    TResult Function(_CalculatePayments value)? calculatePayments,
    TResult Function(_SaveForm value)? saveForm,
    required TResult orElse(),
  }) {
    if (updateAmount != null) {
      return updateAmount(this);
    }
    return orElse();
  }
}

abstract class _UpdateAmount implements LoanCalculatorEvent {
  const factory _UpdateAmount(final int? value) = _$UpdateAmountImpl;

  int? get value;

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAmountImplCopyWith<_$UpdateAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateInterestRateImplCopyWith<$Res> {
  factory _$$UpdateInterestRateImplCopyWith(_$UpdateInterestRateImpl value,
          $Res Function(_$UpdateInterestRateImpl) then) =
      __$$UpdateInterestRateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? value});
}

/// @nodoc
class __$$UpdateInterestRateImplCopyWithImpl<$Res>
    extends _$LoanCalculatorEventCopyWithImpl<$Res, _$UpdateInterestRateImpl>
    implements _$$UpdateInterestRateImplCopyWith<$Res> {
  __$$UpdateInterestRateImplCopyWithImpl(_$UpdateInterestRateImpl _value,
      $Res Function(_$UpdateInterestRateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$UpdateInterestRateImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$UpdateInterestRateImpl implements _UpdateInterestRate {
  const _$UpdateInterestRateImpl(this.value);

  @override
  final double? value;

  @override
  String toString() {
    return 'LoanCalculatorEvent.updateInterestRate(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInterestRateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInterestRateImplCopyWith<_$UpdateInterestRateImpl> get copyWith =>
      __$$UpdateInterestRateImplCopyWithImpl<_$UpdateInterestRateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) updateAmount,
    required TResult Function(double? value) updateInterestRate,
    required TResult Function(int? value) updateTermInMonths,
    required TResult Function(PaymentType? value) updatePaymentType,
    required TResult Function() calculatePayments,
    required TResult Function() saveForm,
  }) {
    return updateInterestRate(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? updateAmount,
    TResult? Function(double? value)? updateInterestRate,
    TResult? Function(int? value)? updateTermInMonths,
    TResult? Function(PaymentType? value)? updatePaymentType,
    TResult? Function()? calculatePayments,
    TResult? Function()? saveForm,
  }) {
    return updateInterestRate?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? updateAmount,
    TResult Function(double? value)? updateInterestRate,
    TResult Function(int? value)? updateTermInMonths,
    TResult Function(PaymentType? value)? updatePaymentType,
    TResult Function()? calculatePayments,
    TResult Function()? saveForm,
    required TResult orElse(),
  }) {
    if (updateInterestRate != null) {
      return updateInterestRate(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAmount value) updateAmount,
    required TResult Function(_UpdateInterestRate value) updateInterestRate,
    required TResult Function(_UpdateTermInMonths value) updateTermInMonths,
    required TResult Function(_UpdatePaymentType value) updatePaymentType,
    required TResult Function(_CalculatePayments value) calculatePayments,
    required TResult Function(_SaveForm value) saveForm,
  }) {
    return updateInterestRate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAmount value)? updateAmount,
    TResult? Function(_UpdateInterestRate value)? updateInterestRate,
    TResult? Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult? Function(_UpdatePaymentType value)? updatePaymentType,
    TResult? Function(_CalculatePayments value)? calculatePayments,
    TResult? Function(_SaveForm value)? saveForm,
  }) {
    return updateInterestRate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAmount value)? updateAmount,
    TResult Function(_UpdateInterestRate value)? updateInterestRate,
    TResult Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult Function(_UpdatePaymentType value)? updatePaymentType,
    TResult Function(_CalculatePayments value)? calculatePayments,
    TResult Function(_SaveForm value)? saveForm,
    required TResult orElse(),
  }) {
    if (updateInterestRate != null) {
      return updateInterestRate(this);
    }
    return orElse();
  }
}

abstract class _UpdateInterestRate implements LoanCalculatorEvent {
  const factory _UpdateInterestRate(final double? value) =
      _$UpdateInterestRateImpl;

  double? get value;

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateInterestRateImplCopyWith<_$UpdateInterestRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTermInMonthsImplCopyWith<$Res> {
  factory _$$UpdateTermInMonthsImplCopyWith(_$UpdateTermInMonthsImpl value,
          $Res Function(_$UpdateTermInMonthsImpl) then) =
      __$$UpdateTermInMonthsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? value});
}

/// @nodoc
class __$$UpdateTermInMonthsImplCopyWithImpl<$Res>
    extends _$LoanCalculatorEventCopyWithImpl<$Res, _$UpdateTermInMonthsImpl>
    implements _$$UpdateTermInMonthsImplCopyWith<$Res> {
  __$$UpdateTermInMonthsImplCopyWithImpl(_$UpdateTermInMonthsImpl _value,
      $Res Function(_$UpdateTermInMonthsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$UpdateTermInMonthsImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UpdateTermInMonthsImpl implements _UpdateTermInMonths {
  const _$UpdateTermInMonthsImpl(this.value);

  @override
  final int? value;

  @override
  String toString() {
    return 'LoanCalculatorEvent.updateTermInMonths(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTermInMonthsImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTermInMonthsImplCopyWith<_$UpdateTermInMonthsImpl> get copyWith =>
      __$$UpdateTermInMonthsImplCopyWithImpl<_$UpdateTermInMonthsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) updateAmount,
    required TResult Function(double? value) updateInterestRate,
    required TResult Function(int? value) updateTermInMonths,
    required TResult Function(PaymentType? value) updatePaymentType,
    required TResult Function() calculatePayments,
    required TResult Function() saveForm,
  }) {
    return updateTermInMonths(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? updateAmount,
    TResult? Function(double? value)? updateInterestRate,
    TResult? Function(int? value)? updateTermInMonths,
    TResult? Function(PaymentType? value)? updatePaymentType,
    TResult? Function()? calculatePayments,
    TResult? Function()? saveForm,
  }) {
    return updateTermInMonths?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? updateAmount,
    TResult Function(double? value)? updateInterestRate,
    TResult Function(int? value)? updateTermInMonths,
    TResult Function(PaymentType? value)? updatePaymentType,
    TResult Function()? calculatePayments,
    TResult Function()? saveForm,
    required TResult orElse(),
  }) {
    if (updateTermInMonths != null) {
      return updateTermInMonths(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAmount value) updateAmount,
    required TResult Function(_UpdateInterestRate value) updateInterestRate,
    required TResult Function(_UpdateTermInMonths value) updateTermInMonths,
    required TResult Function(_UpdatePaymentType value) updatePaymentType,
    required TResult Function(_CalculatePayments value) calculatePayments,
    required TResult Function(_SaveForm value) saveForm,
  }) {
    return updateTermInMonths(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAmount value)? updateAmount,
    TResult? Function(_UpdateInterestRate value)? updateInterestRate,
    TResult? Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult? Function(_UpdatePaymentType value)? updatePaymentType,
    TResult? Function(_CalculatePayments value)? calculatePayments,
    TResult? Function(_SaveForm value)? saveForm,
  }) {
    return updateTermInMonths?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAmount value)? updateAmount,
    TResult Function(_UpdateInterestRate value)? updateInterestRate,
    TResult Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult Function(_UpdatePaymentType value)? updatePaymentType,
    TResult Function(_CalculatePayments value)? calculatePayments,
    TResult Function(_SaveForm value)? saveForm,
    required TResult orElse(),
  }) {
    if (updateTermInMonths != null) {
      return updateTermInMonths(this);
    }
    return orElse();
  }
}

abstract class _UpdateTermInMonths implements LoanCalculatorEvent {
  const factory _UpdateTermInMonths(final int? value) =
      _$UpdateTermInMonthsImpl;

  int? get value;

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTermInMonthsImplCopyWith<_$UpdateTermInMonthsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePaymentTypeImplCopyWith<$Res> {
  factory _$$UpdatePaymentTypeImplCopyWith(_$UpdatePaymentTypeImpl value,
          $Res Function(_$UpdatePaymentTypeImpl) then) =
      __$$UpdatePaymentTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentType? value});
}

/// @nodoc
class __$$UpdatePaymentTypeImplCopyWithImpl<$Res>
    extends _$LoanCalculatorEventCopyWithImpl<$Res, _$UpdatePaymentTypeImpl>
    implements _$$UpdatePaymentTypeImplCopyWith<$Res> {
  __$$UpdatePaymentTypeImplCopyWithImpl(_$UpdatePaymentTypeImpl _value,
      $Res Function(_$UpdatePaymentTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$UpdatePaymentTypeImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as PaymentType?,
    ));
  }
}

/// @nodoc

class _$UpdatePaymentTypeImpl implements _UpdatePaymentType {
  const _$UpdatePaymentTypeImpl(this.value);

  @override
  final PaymentType? value;

  @override
  String toString() {
    return 'LoanCalculatorEvent.updatePaymentType(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePaymentTypeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePaymentTypeImplCopyWith<_$UpdatePaymentTypeImpl> get copyWith =>
      __$$UpdatePaymentTypeImplCopyWithImpl<_$UpdatePaymentTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) updateAmount,
    required TResult Function(double? value) updateInterestRate,
    required TResult Function(int? value) updateTermInMonths,
    required TResult Function(PaymentType? value) updatePaymentType,
    required TResult Function() calculatePayments,
    required TResult Function() saveForm,
  }) {
    return updatePaymentType(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? updateAmount,
    TResult? Function(double? value)? updateInterestRate,
    TResult? Function(int? value)? updateTermInMonths,
    TResult? Function(PaymentType? value)? updatePaymentType,
    TResult? Function()? calculatePayments,
    TResult? Function()? saveForm,
  }) {
    return updatePaymentType?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? updateAmount,
    TResult Function(double? value)? updateInterestRate,
    TResult Function(int? value)? updateTermInMonths,
    TResult Function(PaymentType? value)? updatePaymentType,
    TResult Function()? calculatePayments,
    TResult Function()? saveForm,
    required TResult orElse(),
  }) {
    if (updatePaymentType != null) {
      return updatePaymentType(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAmount value) updateAmount,
    required TResult Function(_UpdateInterestRate value) updateInterestRate,
    required TResult Function(_UpdateTermInMonths value) updateTermInMonths,
    required TResult Function(_UpdatePaymentType value) updatePaymentType,
    required TResult Function(_CalculatePayments value) calculatePayments,
    required TResult Function(_SaveForm value) saveForm,
  }) {
    return updatePaymentType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAmount value)? updateAmount,
    TResult? Function(_UpdateInterestRate value)? updateInterestRate,
    TResult? Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult? Function(_UpdatePaymentType value)? updatePaymentType,
    TResult? Function(_CalculatePayments value)? calculatePayments,
    TResult? Function(_SaveForm value)? saveForm,
  }) {
    return updatePaymentType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAmount value)? updateAmount,
    TResult Function(_UpdateInterestRate value)? updateInterestRate,
    TResult Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult Function(_UpdatePaymentType value)? updatePaymentType,
    TResult Function(_CalculatePayments value)? calculatePayments,
    TResult Function(_SaveForm value)? saveForm,
    required TResult orElse(),
  }) {
    if (updatePaymentType != null) {
      return updatePaymentType(this);
    }
    return orElse();
  }
}

abstract class _UpdatePaymentType implements LoanCalculatorEvent {
  const factory _UpdatePaymentType(final PaymentType? value) =
      _$UpdatePaymentTypeImpl;

  PaymentType? get value;

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePaymentTypeImplCopyWith<_$UpdatePaymentTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalculatePaymentsImplCopyWith<$Res> {
  factory _$$CalculatePaymentsImplCopyWith(_$CalculatePaymentsImpl value,
          $Res Function(_$CalculatePaymentsImpl) then) =
      __$$CalculatePaymentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculatePaymentsImplCopyWithImpl<$Res>
    extends _$LoanCalculatorEventCopyWithImpl<$Res, _$CalculatePaymentsImpl>
    implements _$$CalculatePaymentsImplCopyWith<$Res> {
  __$$CalculatePaymentsImplCopyWithImpl(_$CalculatePaymentsImpl _value,
      $Res Function(_$CalculatePaymentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CalculatePaymentsImpl implements _CalculatePayments {
  const _$CalculatePaymentsImpl();

  @override
  String toString() {
    return 'LoanCalculatorEvent.calculatePayments()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalculatePaymentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) updateAmount,
    required TResult Function(double? value) updateInterestRate,
    required TResult Function(int? value) updateTermInMonths,
    required TResult Function(PaymentType? value) updatePaymentType,
    required TResult Function() calculatePayments,
    required TResult Function() saveForm,
  }) {
    return calculatePayments();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? updateAmount,
    TResult? Function(double? value)? updateInterestRate,
    TResult? Function(int? value)? updateTermInMonths,
    TResult? Function(PaymentType? value)? updatePaymentType,
    TResult? Function()? calculatePayments,
    TResult? Function()? saveForm,
  }) {
    return calculatePayments?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? updateAmount,
    TResult Function(double? value)? updateInterestRate,
    TResult Function(int? value)? updateTermInMonths,
    TResult Function(PaymentType? value)? updatePaymentType,
    TResult Function()? calculatePayments,
    TResult Function()? saveForm,
    required TResult orElse(),
  }) {
    if (calculatePayments != null) {
      return calculatePayments();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAmount value) updateAmount,
    required TResult Function(_UpdateInterestRate value) updateInterestRate,
    required TResult Function(_UpdateTermInMonths value) updateTermInMonths,
    required TResult Function(_UpdatePaymentType value) updatePaymentType,
    required TResult Function(_CalculatePayments value) calculatePayments,
    required TResult Function(_SaveForm value) saveForm,
  }) {
    return calculatePayments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAmount value)? updateAmount,
    TResult? Function(_UpdateInterestRate value)? updateInterestRate,
    TResult? Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult? Function(_UpdatePaymentType value)? updatePaymentType,
    TResult? Function(_CalculatePayments value)? calculatePayments,
    TResult? Function(_SaveForm value)? saveForm,
  }) {
    return calculatePayments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAmount value)? updateAmount,
    TResult Function(_UpdateInterestRate value)? updateInterestRate,
    TResult Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult Function(_UpdatePaymentType value)? updatePaymentType,
    TResult Function(_CalculatePayments value)? calculatePayments,
    TResult Function(_SaveForm value)? saveForm,
    required TResult orElse(),
  }) {
    if (calculatePayments != null) {
      return calculatePayments(this);
    }
    return orElse();
  }
}

abstract class _CalculatePayments implements LoanCalculatorEvent {
  const factory _CalculatePayments() = _$CalculatePaymentsImpl;
}

/// @nodoc
abstract class _$$SaveFormImplCopyWith<$Res> {
  factory _$$SaveFormImplCopyWith(
          _$SaveFormImpl value, $Res Function(_$SaveFormImpl) then) =
      __$$SaveFormImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveFormImplCopyWithImpl<$Res>
    extends _$LoanCalculatorEventCopyWithImpl<$Res, _$SaveFormImpl>
    implements _$$SaveFormImplCopyWith<$Res> {
  __$$SaveFormImplCopyWithImpl(
      _$SaveFormImpl _value, $Res Function(_$SaveFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanCalculatorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveFormImpl implements _SaveForm {
  const _$SaveFormImpl();

  @override
  String toString() {
    return 'LoanCalculatorEvent.saveForm()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveFormImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? value) updateAmount,
    required TResult Function(double? value) updateInterestRate,
    required TResult Function(int? value) updateTermInMonths,
    required TResult Function(PaymentType? value) updatePaymentType,
    required TResult Function() calculatePayments,
    required TResult Function() saveForm,
  }) {
    return saveForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? value)? updateAmount,
    TResult? Function(double? value)? updateInterestRate,
    TResult? Function(int? value)? updateTermInMonths,
    TResult? Function(PaymentType? value)? updatePaymentType,
    TResult? Function()? calculatePayments,
    TResult? Function()? saveForm,
  }) {
    return saveForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? value)? updateAmount,
    TResult Function(double? value)? updateInterestRate,
    TResult Function(int? value)? updateTermInMonths,
    TResult Function(PaymentType? value)? updatePaymentType,
    TResult Function()? calculatePayments,
    TResult Function()? saveForm,
    required TResult orElse(),
  }) {
    if (saveForm != null) {
      return saveForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAmount value) updateAmount,
    required TResult Function(_UpdateInterestRate value) updateInterestRate,
    required TResult Function(_UpdateTermInMonths value) updateTermInMonths,
    required TResult Function(_UpdatePaymentType value) updatePaymentType,
    required TResult Function(_CalculatePayments value) calculatePayments,
    required TResult Function(_SaveForm value) saveForm,
  }) {
    return saveForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAmount value)? updateAmount,
    TResult? Function(_UpdateInterestRate value)? updateInterestRate,
    TResult? Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult? Function(_UpdatePaymentType value)? updatePaymentType,
    TResult? Function(_CalculatePayments value)? calculatePayments,
    TResult? Function(_SaveForm value)? saveForm,
  }) {
    return saveForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAmount value)? updateAmount,
    TResult Function(_UpdateInterestRate value)? updateInterestRate,
    TResult Function(_UpdateTermInMonths value)? updateTermInMonths,
    TResult Function(_UpdatePaymentType value)? updatePaymentType,
    TResult Function(_CalculatePayments value)? calculatePayments,
    TResult Function(_SaveForm value)? saveForm,
    required TResult orElse(),
  }) {
    if (saveForm != null) {
      return saveForm(this);
    }
    return orElse();
  }
}

abstract class _SaveForm implements LoanCalculatorEvent {
  const factory _SaveForm() = _$SaveFormImpl;
}

/// @nodoc
mixin _$LoanCalculatorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function() loaded,
    required TResult Function(String failureDescription) failure,
    required TResult Function() formSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function()? loaded,
    TResult? Function(String failureDescription)? failure,
    TResult? Function()? formSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function()? loaded,
    TResult Function(String failureDescription)? failure,
    TResult Function()? formSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FormSaved value) formSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FormSaved value)? formSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FormSaved value)? formSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanCalculatorStateCopyWith<$Res> {
  factory $LoanCalculatorStateCopyWith(
          LoanCalculatorState value, $Res Function(LoanCalculatorState) then) =
      _$LoanCalculatorStateCopyWithImpl<$Res, LoanCalculatorState>;
}

/// @nodoc
class _$LoanCalculatorStateCopyWithImpl<$Res, $Val extends LoanCalculatorState>
    implements $LoanCalculatorStateCopyWith<$Res> {
  _$LoanCalculatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoanCalculatorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoanCalculatorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanCalculatorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoanCalculatorState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function() loaded,
    required TResult Function(String failureDescription) failure,
    required TResult Function() formSaved,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function()? loaded,
    TResult? Function(String failureDescription)? failure,
    TResult? Function()? formSaved,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function()? loaded,
    TResult Function(String failureDescription)? failure,
    TResult Function()? formSaved,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FormSaved value) formSaved,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FormSaved value)? formSaved,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FormSaved value)? formSaved,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoanCalculatorState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PendingImplCopyWith<$Res> {
  factory _$$PendingImplCopyWith(
          _$PendingImpl value, $Res Function(_$PendingImpl) then) =
      __$$PendingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PendingImplCopyWithImpl<$Res>
    extends _$LoanCalculatorStateCopyWithImpl<$Res, _$PendingImpl>
    implements _$$PendingImplCopyWith<$Res> {
  __$$PendingImplCopyWithImpl(
      _$PendingImpl _value, $Res Function(_$PendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanCalculatorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PendingImpl implements _Pending {
  const _$PendingImpl();

  @override
  String toString() {
    return 'LoanCalculatorState.pending()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PendingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function() loaded,
    required TResult Function(String failureDescription) failure,
    required TResult Function() formSaved,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function()? loaded,
    TResult? Function(String failureDescription)? failure,
    TResult? Function()? formSaved,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function()? loaded,
    TResult Function(String failureDescription)? failure,
    TResult Function()? formSaved,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FormSaved value) formSaved,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FormSaved value)? formSaved,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FormSaved value)? formSaved,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _Pending implements LoanCalculatorState {
  const factory _Pending() = _$PendingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$LoanCalculatorStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanCalculatorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'LoanCalculatorState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function() loaded,
    required TResult Function(String failureDescription) failure,
    required TResult Function() formSaved,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function()? loaded,
    TResult? Function(String failureDescription)? failure,
    TResult? Function()? formSaved,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function()? loaded,
    TResult Function(String failureDescription)? failure,
    TResult Function()? formSaved,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FormSaved value) formSaved,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FormSaved value)? formSaved,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FormSaved value)? formSaved,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements LoanCalculatorState {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String failureDescription});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$LoanCalculatorStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanCalculatorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureDescription = null,
  }) {
    return _then(_$FailureImpl(
      null == failureDescription
          ? _value.failureDescription
          : failureDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.failureDescription);

  @override
  final String failureDescription;

  @override
  String toString() {
    return 'LoanCalculatorState.failure(failureDescription: $failureDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.failureDescription, failureDescription) ||
                other.failureDescription == failureDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureDescription);

  /// Create a copy of LoanCalculatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function() loaded,
    required TResult Function(String failureDescription) failure,
    required TResult Function() formSaved,
  }) {
    return failure(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function()? loaded,
    TResult? Function(String failureDescription)? failure,
    TResult? Function()? formSaved,
  }) {
    return failure?.call(failureDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function()? loaded,
    TResult Function(String failureDescription)? failure,
    TResult Function()? formSaved,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(failureDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FormSaved value) formSaved,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FormSaved value)? formSaved,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FormSaved value)? formSaved,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements LoanCalculatorState {
  const factory _Failure(final String failureDescription) = _$FailureImpl;

  String get failureDescription;

  /// Create a copy of LoanCalculatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSavedImplCopyWith<$Res> {
  factory _$$FormSavedImplCopyWith(
          _$FormSavedImpl value, $Res Function(_$FormSavedImpl) then) =
      __$$FormSavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSavedImplCopyWithImpl<$Res>
    extends _$LoanCalculatorStateCopyWithImpl<$Res, _$FormSavedImpl>
    implements _$$FormSavedImplCopyWith<$Res> {
  __$$FormSavedImplCopyWithImpl(
      _$FormSavedImpl _value, $Res Function(_$FormSavedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoanCalculatorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FormSavedImpl implements _FormSaved {
  const _$FormSavedImpl();

  @override
  String toString() {
    return 'LoanCalculatorState.formSaved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormSavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pending,
    required TResult Function() loaded,
    required TResult Function(String failureDescription) failure,
    required TResult Function() formSaved,
  }) {
    return formSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? pending,
    TResult? Function()? loaded,
    TResult? Function(String failureDescription)? failure,
    TResult? Function()? formSaved,
  }) {
    return formSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pending,
    TResult Function()? loaded,
    TResult Function(String failureDescription)? failure,
    TResult Function()? formSaved,
    required TResult orElse(),
  }) {
    if (formSaved != null) {
      return formSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Pending value) pending,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_FormSaved value) formSaved,
  }) {
    return formSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Pending value)? pending,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_FormSaved value)? formSaved,
  }) {
    return formSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Pending value)? pending,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_FormSaved value)? formSaved,
    required TResult orElse(),
  }) {
    if (formSaved != null) {
      return formSaved(this);
    }
    return orElse();
  }
}

abstract class _FormSaved implements LoanCalculatorState {
  const factory _FormSaved() = _$FormSavedImpl;
}
