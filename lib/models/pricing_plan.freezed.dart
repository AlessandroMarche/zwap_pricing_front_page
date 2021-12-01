// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pricing_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PricingPlan _$PricingPlanFromJson(Map<String, dynamic> json) {
  return _PricingPlan.fromJson(json);
}

/// @nodoc
class _$PricingPlanTearOff {
  const _$PricingPlanTearOff();

  _PricingPlan call(
      {required String id,
      required String title,
      required String subtitle,
      @JsonKey(name: 'monthprice') required double monthPrice,
      @JsonKey(name: 'annualprice') double? annualPrice,
      required List<PricingFeature> features,
      @JsonKey(defaultValue: false) bool favorite = false}) {
    return _PricingPlan(
      id: id,
      title: title,
      subtitle: subtitle,
      monthPrice: monthPrice,
      annualPrice: annualPrice,
      features: features,
      favorite: favorite,
    );
  }

  PricingPlan fromJson(Map<String, Object?> json) {
    return PricingPlan.fromJson(json);
  }
}

/// @nodoc
const $PricingPlan = _$PricingPlanTearOff();

/// @nodoc
mixin _$PricingPlan {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthprice')
  double get monthPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'annualprice')
  double? get annualPrice => throw _privateConstructorUsedError;
  List<PricingFeature> get features => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get favorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricingPlanCopyWith<PricingPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingPlanCopyWith<$Res> {
  factory $PricingPlanCopyWith(
          PricingPlan value, $Res Function(PricingPlan) then) =
      _$PricingPlanCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String subtitle,
      @JsonKey(name: 'monthprice') double monthPrice,
      @JsonKey(name: 'annualprice') double? annualPrice,
      List<PricingFeature> features,
      @JsonKey(defaultValue: false) bool favorite});
}

/// @nodoc
class _$PricingPlanCopyWithImpl<$Res> implements $PricingPlanCopyWith<$Res> {
  _$PricingPlanCopyWithImpl(this._value, this._then);

  final PricingPlan _value;
  // ignore: unused_field
  final $Res Function(PricingPlan) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? monthPrice = freezed,
    Object? annualPrice = freezed,
    Object? features = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      monthPrice: monthPrice == freezed
          ? _value.monthPrice
          : monthPrice // ignore: cast_nullable_to_non_nullable
              as double,
      annualPrice: annualPrice == freezed
          ? _value.annualPrice
          : annualPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<PricingFeature>,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PricingPlanCopyWith<$Res>
    implements $PricingPlanCopyWith<$Res> {
  factory _$PricingPlanCopyWith(
          _PricingPlan value, $Res Function(_PricingPlan) then) =
      __$PricingPlanCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String subtitle,
      @JsonKey(name: 'monthprice') double monthPrice,
      @JsonKey(name: 'annualprice') double? annualPrice,
      List<PricingFeature> features,
      @JsonKey(defaultValue: false) bool favorite});
}

/// @nodoc
class __$PricingPlanCopyWithImpl<$Res> extends _$PricingPlanCopyWithImpl<$Res>
    implements _$PricingPlanCopyWith<$Res> {
  __$PricingPlanCopyWithImpl(
      _PricingPlan _value, $Res Function(_PricingPlan) _then)
      : super(_value, (v) => _then(v as _PricingPlan));

  @override
  _PricingPlan get _value => super._value as _PricingPlan;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? monthPrice = freezed,
    Object? annualPrice = freezed,
    Object? features = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_PricingPlan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      monthPrice: monthPrice == freezed
          ? _value.monthPrice
          : monthPrice // ignore: cast_nullable_to_non_nullable
              as double,
      annualPrice: annualPrice == freezed
          ? _value.annualPrice
          : annualPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<PricingFeature>,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PricingPlan extends _PricingPlan {
  _$_PricingPlan(
      {required this.id,
      required this.title,
      required this.subtitle,
      @JsonKey(name: 'monthprice') required this.monthPrice,
      @JsonKey(name: 'annualprice') this.annualPrice,
      required this.features,
      @JsonKey(defaultValue: false) this.favorite = false})
      : super._();

  factory _$_PricingPlan.fromJson(Map<String, dynamic> json) =>
      _$$_PricingPlanFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  @JsonKey(name: 'monthprice')
  final double monthPrice;
  @override
  @JsonKey(name: 'annualprice')
  final double? annualPrice;
  @override
  final List<PricingFeature> features;
  @override
  @JsonKey(defaultValue: false)
  final bool favorite;

  @override
  String toString() {
    return 'PricingPlan(id: $id, title: $title, subtitle: $subtitle, monthPrice: $monthPrice, annualPrice: $annualPrice, features: $features, favorite: $favorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PricingPlan &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.monthPrice, monthPrice) ||
                other.monthPrice == monthPrice) &&
            (identical(other.annualPrice, annualPrice) ||
                other.annualPrice == annualPrice) &&
            const DeepCollectionEquality().equals(other.features, features) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, subtitle, monthPrice,
      annualPrice, const DeepCollectionEquality().hash(features), favorite);

  @JsonKey(ignore: true)
  @override
  _$PricingPlanCopyWith<_PricingPlan> get copyWith =>
      __$PricingPlanCopyWithImpl<_PricingPlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricingPlanToJson(this);
  }
}

abstract class _PricingPlan extends PricingPlan {
  factory _PricingPlan(
      {required String id,
      required String title,
      required String subtitle,
      @JsonKey(name: 'monthprice') required double monthPrice,
      @JsonKey(name: 'annualprice') double? annualPrice,
      required List<PricingFeature> features,
      @JsonKey(defaultValue: false) bool favorite}) = _$_PricingPlan;
  _PricingPlan._() : super._();

  factory _PricingPlan.fromJson(Map<String, dynamic> json) =
      _$_PricingPlan.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  @JsonKey(name: 'monthprice')
  double get monthPrice;
  @override
  @JsonKey(name: 'annualprice')
  double? get annualPrice;
  @override
  List<PricingFeature> get features;
  @override
  @JsonKey(defaultValue: false)
  bool get favorite;
  @override
  @JsonKey(ignore: true)
  _$PricingPlanCopyWith<_PricingPlan> get copyWith =>
      throw _privateConstructorUsedError;
}
