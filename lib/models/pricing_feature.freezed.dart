// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pricing_feature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PricingFeature _$PricingFeatureFromJson(Map<String, dynamic> json) {
  return _PricingFeature.fromJson(json);
}

/// @nodoc
class _$PricingFeatureTearOff {
  const _$PricingFeatureTearOff();

  _PricingFeature call({required String title, bool included = true}) {
    return _PricingFeature(
      title: title,
      included: included,
    );
  }

  PricingFeature fromJson(Map<String, Object?> json) {
    return PricingFeature.fromJson(json);
  }
}

/// @nodoc
const $PricingFeature = _$PricingFeatureTearOff();

/// @nodoc
mixin _$PricingFeature {
  String get title => throw _privateConstructorUsedError;
  bool get included => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricingFeatureCopyWith<PricingFeature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingFeatureCopyWith<$Res> {
  factory $PricingFeatureCopyWith(
          PricingFeature value, $Res Function(PricingFeature) then) =
      _$PricingFeatureCopyWithImpl<$Res>;
  $Res call({String title, bool included});
}

/// @nodoc
class _$PricingFeatureCopyWithImpl<$Res>
    implements $PricingFeatureCopyWith<$Res> {
  _$PricingFeatureCopyWithImpl(this._value, this._then);

  final PricingFeature _value;
  // ignore: unused_field
  final $Res Function(PricingFeature) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? included = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      included: included == freezed
          ? _value.included
          : included // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PricingFeatureCopyWith<$Res>
    implements $PricingFeatureCopyWith<$Res> {
  factory _$PricingFeatureCopyWith(
          _PricingFeature value, $Res Function(_PricingFeature) then) =
      __$PricingFeatureCopyWithImpl<$Res>;
  @override
  $Res call({String title, bool included});
}

/// @nodoc
class __$PricingFeatureCopyWithImpl<$Res>
    extends _$PricingFeatureCopyWithImpl<$Res>
    implements _$PricingFeatureCopyWith<$Res> {
  __$PricingFeatureCopyWithImpl(
      _PricingFeature _value, $Res Function(_PricingFeature) _then)
      : super(_value, (v) => _then(v as _PricingFeature));

  @override
  _PricingFeature get _value => super._value as _PricingFeature;

  @override
  $Res call({
    Object? title = freezed,
    Object? included = freezed,
  }) {
    return _then(_PricingFeature(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      included: included == freezed
          ? _value.included
          : included // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PricingFeature extends _PricingFeature {
  _$_PricingFeature({required this.title, this.included = true}) : super._();

  factory _$_PricingFeature.fromJson(Map<String, dynamic> json) =>
      _$$_PricingFeatureFromJson(json);

  @override
  final String title;
  @JsonKey(defaultValue: true)
  @override
  final bool included;

  @override
  String toString() {
    return 'PricingFeature(title: $title, included: $included)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PricingFeature &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.included, included) ||
                other.included == included));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, included);

  @JsonKey(ignore: true)
  @override
  _$PricingFeatureCopyWith<_PricingFeature> get copyWith =>
      __$PricingFeatureCopyWithImpl<_PricingFeature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricingFeatureToJson(this);
  }
}

abstract class _PricingFeature extends PricingFeature {
  factory _PricingFeature({required String title, bool included}) =
      _$_PricingFeature;
  _PricingFeature._() : super._();

  factory _PricingFeature.fromJson(Map<String, dynamic> json) =
      _$_PricingFeature.fromJson;

  @override
  String get title;
  @override
  bool get included;
  @override
  @JsonKey(ignore: true)
  _$PricingFeatureCopyWith<_PricingFeature> get copyWith =>
      throw _privateConstructorUsedError;
}
