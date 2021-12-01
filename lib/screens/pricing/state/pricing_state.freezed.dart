// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pricing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PricingStateTearOff {
  const _$PricingStateTearOff();

  _PricingState call(
      {bool loading = true,
      List<PricingPlan> plans = const [],
      dynamic payEachSelection = PayEach.month}) {
    return _PricingState(
      loading: loading,
      plans: plans,
      payEachSelection: payEachSelection,
    );
  }
}

/// @nodoc
const $PricingState = _$PricingStateTearOff();

/// @nodoc
mixin _$PricingState {
  bool get loading => throw _privateConstructorUsedError;
  List<PricingPlan> get plans => throw _privateConstructorUsedError;
  dynamic get payEachSelection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PricingStateCopyWith<PricingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingStateCopyWith<$Res> {
  factory $PricingStateCopyWith(
          PricingState value, $Res Function(PricingState) then) =
      _$PricingStateCopyWithImpl<$Res>;
  $Res call({bool loading, List<PricingPlan> plans, dynamic payEachSelection});
}

/// @nodoc
class _$PricingStateCopyWithImpl<$Res> implements $PricingStateCopyWith<$Res> {
  _$PricingStateCopyWithImpl(this._value, this._then);

  final PricingState _value;
  // ignore: unused_field
  final $Res Function(PricingState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? plans = freezed,
    Object? payEachSelection = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      plans: plans == freezed
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<PricingPlan>,
      payEachSelection: payEachSelection == freezed
          ? _value.payEachSelection
          : payEachSelection // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$PricingStateCopyWith<$Res>
    implements $PricingStateCopyWith<$Res> {
  factory _$PricingStateCopyWith(
          _PricingState value, $Res Function(_PricingState) then) =
      __$PricingStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, List<PricingPlan> plans, dynamic payEachSelection});
}

/// @nodoc
class __$PricingStateCopyWithImpl<$Res> extends _$PricingStateCopyWithImpl<$Res>
    implements _$PricingStateCopyWith<$Res> {
  __$PricingStateCopyWithImpl(
      _PricingState _value, $Res Function(_PricingState) _then)
      : super(_value, (v) => _then(v as _PricingState));

  @override
  _PricingState get _value => super._value as _PricingState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? plans = freezed,
    Object? payEachSelection = freezed,
  }) {
    return _then(_PricingState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      plans: plans == freezed
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<PricingPlan>,
      payEachSelection: payEachSelection == freezed
          ? _value.payEachSelection
          : payEachSelection,
    ));
  }
}

/// @nodoc

class _$_PricingState extends _PricingState {
  _$_PricingState(
      {this.loading = true,
      this.plans = const [],
      this.payEachSelection = PayEach.month})
      : super._();

  @JsonKey(defaultValue: true)
  @override
  final bool loading;
  @JsonKey(defaultValue: const [])
  @override
  final List<PricingPlan> plans;
  @JsonKey(defaultValue: PayEach.month)
  @override
  final dynamic payEachSelection;

  @override
  String toString() {
    return 'PricingState(loading: $loading, plans: $plans, payEachSelection: $payEachSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PricingState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other.plans, plans) &&
            const DeepCollectionEquality()
                .equals(other.payEachSelection, payEachSelection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      const DeepCollectionEquality().hash(plans),
      const DeepCollectionEquality().hash(payEachSelection));

  @JsonKey(ignore: true)
  @override
  _$PricingStateCopyWith<_PricingState> get copyWith =>
      __$PricingStateCopyWithImpl<_PricingState>(this, _$identity);
}

abstract class _PricingState extends PricingState {
  factory _PricingState(
      {bool loading,
      List<PricingPlan> plans,
      dynamic payEachSelection}) = _$_PricingState;
  _PricingState._() : super._();

  @override
  bool get loading;
  @override
  List<PricingPlan> get plans;
  @override
  dynamic get payEachSelection;
  @override
  @JsonKey(ignore: true)
  _$PricingStateCopyWith<_PricingState> get copyWith =>
      throw _privateConstructorUsedError;
}
