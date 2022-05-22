// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'twitter_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TwitterFailureTearOff {
  const _$TwitterFailureTearOff();

  ClientTwitterFailure twitterClient(String error) {
    return ClientTwitterFailure(
      error,
    );
  }

  UnknownTwitterFailure unknown(String error) {
    return UnknownTwitterFailure(
      error,
    );
  }
}

/// @nodoc
const $TwitterFailure = _$TwitterFailureTearOff();

/// @nodoc
mixin _$TwitterFailure {
  String get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) twitterClient,
    required TResult Function(String error) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? twitterClient,
    TResult Function(String error)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? twitterClient,
    TResult Function(String error)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientTwitterFailure value) twitterClient,
    required TResult Function(UnknownTwitterFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientTwitterFailure value)? twitterClient,
    TResult Function(UnknownTwitterFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientTwitterFailure value)? twitterClient,
    TResult Function(UnknownTwitterFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TwitterFailureCopyWith<TwitterFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitterFailureCopyWith<$Res> {
  factory $TwitterFailureCopyWith(
          TwitterFailure value, $Res Function(TwitterFailure) then) =
      _$TwitterFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$TwitterFailureCopyWithImpl<$Res>
    implements $TwitterFailureCopyWith<$Res> {
  _$TwitterFailureCopyWithImpl(this._value, this._then);

  final TwitterFailure _value;
  // ignore: unused_field
  final $Res Function(TwitterFailure) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $ClientTwitterFailureCopyWith<$Res>
    implements $TwitterFailureCopyWith<$Res> {
  factory $ClientTwitterFailureCopyWith(ClientTwitterFailure value,
          $Res Function(ClientTwitterFailure) then) =
      _$ClientTwitterFailureCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class _$ClientTwitterFailureCopyWithImpl<$Res>
    extends _$TwitterFailureCopyWithImpl<$Res>
    implements $ClientTwitterFailureCopyWith<$Res> {
  _$ClientTwitterFailureCopyWithImpl(
      ClientTwitterFailure _value, $Res Function(ClientTwitterFailure) _then)
      : super(_value, (v) => _then(v as ClientTwitterFailure));

  @override
  ClientTwitterFailure get _value => super._value as ClientTwitterFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ClientTwitterFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientTwitterFailure implements ClientTwitterFailure {
  const _$ClientTwitterFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TwitterFailure.twitterClient(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ClientTwitterFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ClientTwitterFailureCopyWith<ClientTwitterFailure> get copyWith =>
      _$ClientTwitterFailureCopyWithImpl<ClientTwitterFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) twitterClient,
    required TResult Function(String error) unknown,
  }) {
    return twitterClient(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? twitterClient,
    TResult Function(String error)? unknown,
  }) {
    return twitterClient?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? twitterClient,
    TResult Function(String error)? unknown,
    required TResult orElse(),
  }) {
    if (twitterClient != null) {
      return twitterClient(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientTwitterFailure value) twitterClient,
    required TResult Function(UnknownTwitterFailure value) unknown,
  }) {
    return twitterClient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientTwitterFailure value)? twitterClient,
    TResult Function(UnknownTwitterFailure value)? unknown,
  }) {
    return twitterClient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientTwitterFailure value)? twitterClient,
    TResult Function(UnknownTwitterFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (twitterClient != null) {
      return twitterClient(this);
    }
    return orElse();
  }
}

abstract class ClientTwitterFailure implements TwitterFailure {
  const factory ClientTwitterFailure(String error) = _$ClientTwitterFailure;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  $ClientTwitterFailureCopyWith<ClientTwitterFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnknownTwitterFailureCopyWith<$Res>
    implements $TwitterFailureCopyWith<$Res> {
  factory $UnknownTwitterFailureCopyWith(UnknownTwitterFailure value,
          $Res Function(UnknownTwitterFailure) then) =
      _$UnknownTwitterFailureCopyWithImpl<$Res>;
  @override
  $Res call({String error});
}

/// @nodoc
class _$UnknownTwitterFailureCopyWithImpl<$Res>
    extends _$TwitterFailureCopyWithImpl<$Res>
    implements $UnknownTwitterFailureCopyWith<$Res> {
  _$UnknownTwitterFailureCopyWithImpl(
      UnknownTwitterFailure _value, $Res Function(UnknownTwitterFailure) _then)
      : super(_value, (v) => _then(v as UnknownTwitterFailure));

  @override
  UnknownTwitterFailure get _value => super._value as UnknownTwitterFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UnknownTwitterFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownTwitterFailure implements UnknownTwitterFailure {
  const _$UnknownTwitterFailure(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TwitterFailure.unknown(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnknownTwitterFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $UnknownTwitterFailureCopyWith<UnknownTwitterFailure> get copyWith =>
      _$UnknownTwitterFailureCopyWithImpl<UnknownTwitterFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) twitterClient,
    required TResult Function(String error) unknown,
  }) {
    return unknown(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String error)? twitterClient,
    TResult Function(String error)? unknown,
  }) {
    return unknown?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? twitterClient,
    TResult Function(String error)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientTwitterFailure value) twitterClient,
    required TResult Function(UnknownTwitterFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClientTwitterFailure value)? twitterClient,
    TResult Function(UnknownTwitterFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientTwitterFailure value)? twitterClient,
    TResult Function(UnknownTwitterFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownTwitterFailure implements TwitterFailure {
  const factory UnknownTwitterFailure(String error) = _$UnknownTwitterFailure;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  $UnknownTwitterFailureCopyWith<UnknownTwitterFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
