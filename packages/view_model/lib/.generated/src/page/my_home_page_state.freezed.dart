// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../src/page/my_home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyHomePageState {
  UserDto? get user => throw _privateConstructorUsedError;
  bool get loggedIn => throw _privateConstructorUsedError;

  /// Create a copy of MyHomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyHomePageStateCopyWith<MyHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyHomePageStateCopyWith<$Res> {
  factory $MyHomePageStateCopyWith(
          MyHomePageState value, $Res Function(MyHomePageState) then) =
      _$MyHomePageStateCopyWithImpl<$Res, MyHomePageState>;
  @useResult
  $Res call({UserDto? user, bool loggedIn});

  $UserDtoCopyWith<$Res>? get user;
}

/// @nodoc
class _$MyHomePageStateCopyWithImpl<$Res, $Val extends MyHomePageState>
    implements $MyHomePageStateCopyWith<$Res> {
  _$MyHomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyHomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? loggedIn = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MyHomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyHomePageStateImplCopyWith<$Res>
    implements $MyHomePageStateCopyWith<$Res> {
  factory _$$MyHomePageStateImplCopyWith(_$MyHomePageStateImpl value,
          $Res Function(_$MyHomePageStateImpl) then) =
      __$$MyHomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserDto? user, bool loggedIn});

  @override
  $UserDtoCopyWith<$Res>? get user;
}

/// @nodoc
class __$$MyHomePageStateImplCopyWithImpl<$Res>
    extends _$MyHomePageStateCopyWithImpl<$Res, _$MyHomePageStateImpl>
    implements _$$MyHomePageStateImplCopyWith<$Res> {
  __$$MyHomePageStateImplCopyWithImpl(
      _$MyHomePageStateImpl _value, $Res Function(_$MyHomePageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyHomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? loggedIn = null,
  }) {
    return _then(_$MyHomePageStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MyHomePageStateImpl implements _MyHomePageState {
  const _$MyHomePageStateImpl({required this.user, required this.loggedIn});

  @override
  final UserDto? user;
  @override
  final bool loggedIn;

  @override
  String toString() {
    return 'MyHomePageState(user: $user, loggedIn: $loggedIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyHomePageStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.loggedIn, loggedIn) ||
                other.loggedIn == loggedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, loggedIn);

  /// Create a copy of MyHomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyHomePageStateImplCopyWith<_$MyHomePageStateImpl> get copyWith =>
      __$$MyHomePageStateImplCopyWithImpl<_$MyHomePageStateImpl>(
          this, _$identity);
}

abstract class _MyHomePageState implements MyHomePageState {
  const factory _MyHomePageState(
      {required final UserDto? user,
      required final bool loggedIn}) = _$MyHomePageStateImpl;

  @override
  UserDto? get user;
  @override
  bool get loggedIn;

  /// Create a copy of MyHomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyHomePageStateImplCopyWith<_$MyHomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
