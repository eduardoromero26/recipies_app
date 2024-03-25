// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipiesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingStarted,
    required TResult Function(MealsModel? meals) loadedSuccess,
    required TResult Function(String message) loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingStarted,
    TResult? Function(MealsModel? meals)? loadedSuccess,
    TResult? Function(String message)? loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingStarted,
    TResult Function(MealsModel? meals)? loadedSuccess,
    TResult Function(String message)? loadedFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingStarted value) loadingStarted,
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_LoadedFailed value) loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingStarted value)? loadingStarted,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_LoadedFailed value)? loadedFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingStarted value)? loadingStarted,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipiesStateCopyWith<$Res> {
  factory $RecipiesStateCopyWith(
          RecipiesState value, $Res Function(RecipiesState) then) =
      _$RecipiesStateCopyWithImpl<$Res, RecipiesState>;
}

/// @nodoc
class _$RecipiesStateCopyWithImpl<$Res, $Val extends RecipiesState>
    implements $RecipiesStateCopyWith<$Res> {
  _$RecipiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RecipiesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl();

  @override
  String toString() {
    return 'RecipiesState.initial()';
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
    required TResult Function() loadingStarted,
    required TResult Function(MealsModel? meals) loadedSuccess,
    required TResult Function(String message) loadedFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingStarted,
    TResult? Function(MealsModel? meals)? loadedSuccess,
    TResult? Function(String message)? loadedFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingStarted,
    TResult Function(MealsModel? meals)? loadedSuccess,
    TResult Function(String message)? loadedFailed,
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
    required TResult Function(_LoadingStarted value) loadingStarted,
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_LoadedFailed value) loadedFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingStarted value)? loadingStarted,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_LoadedFailed value)? loadedFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingStarted value)? loadingStarted,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RecipiesState {
  factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingStartedImplCopyWith<$Res> {
  factory _$$LoadingStartedImplCopyWith(_$LoadingStartedImpl value,
          $Res Function(_$LoadingStartedImpl) then) =
      __$$LoadingStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStartedImplCopyWithImpl<$Res>
    extends _$RecipiesStateCopyWithImpl<$Res, _$LoadingStartedImpl>
    implements _$$LoadingStartedImplCopyWith<$Res> {
  __$$LoadingStartedImplCopyWithImpl(
      _$LoadingStartedImpl _value, $Res Function(_$LoadingStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStartedImpl implements _LoadingStarted {
  _$LoadingStartedImpl();

  @override
  String toString() {
    return 'RecipiesState.loadingStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingStarted,
    required TResult Function(MealsModel? meals) loadedSuccess,
    required TResult Function(String message) loadedFailed,
  }) {
    return loadingStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingStarted,
    TResult? Function(MealsModel? meals)? loadedSuccess,
    TResult? Function(String message)? loadedFailed,
  }) {
    return loadingStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingStarted,
    TResult Function(MealsModel? meals)? loadedSuccess,
    TResult Function(String message)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadingStarted != null) {
      return loadingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingStarted value) loadingStarted,
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_LoadedFailed value) loadedFailed,
  }) {
    return loadingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingStarted value)? loadingStarted,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_LoadedFailed value)? loadedFailed,
  }) {
    return loadingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingStarted value)? loadingStarted,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadingStarted != null) {
      return loadingStarted(this);
    }
    return orElse();
  }
}

abstract class _LoadingStarted implements RecipiesState {
  factory _LoadingStarted() = _$LoadingStartedImpl;
}

/// @nodoc
abstract class _$$LoadedSuccessImplCopyWith<$Res> {
  factory _$$LoadedSuccessImplCopyWith(
          _$LoadedSuccessImpl value, $Res Function(_$LoadedSuccessImpl) then) =
      __$$LoadedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MealsModel? meals});
}

/// @nodoc
class __$$LoadedSuccessImplCopyWithImpl<$Res>
    extends _$RecipiesStateCopyWithImpl<$Res, _$LoadedSuccessImpl>
    implements _$$LoadedSuccessImplCopyWith<$Res> {
  __$$LoadedSuccessImplCopyWithImpl(
      _$LoadedSuccessImpl _value, $Res Function(_$LoadedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = freezed,
  }) {
    return _then(_$LoadedSuccessImpl(
      freezed == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as MealsModel?,
    ));
  }
}

/// @nodoc

class _$LoadedSuccessImpl implements _LoadedSuccess {
  _$LoadedSuccessImpl(this.meals);

  @override
  final MealsModel? meals;

  @override
  String toString() {
    return 'RecipiesState.loadedSuccess(meals: $meals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSuccessImpl &&
            (identical(other.meals, meals) || other.meals == meals));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSuccessImplCopyWith<_$LoadedSuccessImpl> get copyWith =>
      __$$LoadedSuccessImplCopyWithImpl<_$LoadedSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingStarted,
    required TResult Function(MealsModel? meals) loadedSuccess,
    required TResult Function(String message) loadedFailed,
  }) {
    return loadedSuccess(meals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingStarted,
    TResult? Function(MealsModel? meals)? loadedSuccess,
    TResult? Function(String message)? loadedFailed,
  }) {
    return loadedSuccess?.call(meals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingStarted,
    TResult Function(MealsModel? meals)? loadedSuccess,
    TResult Function(String message)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(meals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingStarted value) loadingStarted,
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_LoadedFailed value) loadedFailed,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingStarted value)? loadingStarted,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_LoadedFailed value)? loadedFailed,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingStarted value)? loadingStarted,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadedSuccess implements RecipiesState {
  factory _LoadedSuccess(final MealsModel? meals) = _$LoadedSuccessImpl;

  MealsModel? get meals;
  @JsonKey(ignore: true)
  _$$LoadedSuccessImplCopyWith<_$LoadedSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedFailedImplCopyWith<$Res> {
  factory _$$LoadedFailedImplCopyWith(
          _$LoadedFailedImpl value, $Res Function(_$LoadedFailedImpl) then) =
      __$$LoadedFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoadedFailedImplCopyWithImpl<$Res>
    extends _$RecipiesStateCopyWithImpl<$Res, _$LoadedFailedImpl>
    implements _$$LoadedFailedImplCopyWith<$Res> {
  __$$LoadedFailedImplCopyWithImpl(
      _$LoadedFailedImpl _value, $Res Function(_$LoadedFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoadedFailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedFailedImpl implements _LoadedFailed {
  _$LoadedFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RecipiesState.loadedFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedFailedImplCopyWith<_$LoadedFailedImpl> get copyWith =>
      __$$LoadedFailedImplCopyWithImpl<_$LoadedFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingStarted,
    required TResult Function(MealsModel? meals) loadedSuccess,
    required TResult Function(String message) loadedFailed,
  }) {
    return loadedFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingStarted,
    TResult? Function(MealsModel? meals)? loadedSuccess,
    TResult? Function(String message)? loadedFailed,
  }) {
    return loadedFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingStarted,
    TResult Function(MealsModel? meals)? loadedSuccess,
    TResult Function(String message)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadedFailed != null) {
      return loadedFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingStarted value) loadingStarted,
    required TResult Function(_LoadedSuccess value) loadedSuccess,
    required TResult Function(_LoadedFailed value) loadedFailed,
  }) {
    return loadedFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingStarted value)? loadingStarted,
    TResult? Function(_LoadedSuccess value)? loadedSuccess,
    TResult? Function(_LoadedFailed value)? loadedFailed,
  }) {
    return loadedFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingStarted value)? loadingStarted,
    TResult Function(_LoadedSuccess value)? loadedSuccess,
    TResult Function(_LoadedFailed value)? loadedFailed,
    required TResult orElse(),
  }) {
    if (loadedFailed != null) {
      return loadedFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadedFailed implements RecipiesState {
  factory _LoadedFailed(final String message) = _$LoadedFailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoadedFailedImplCopyWith<_$LoadedFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
