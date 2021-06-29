// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductsStateTearOff {
  const _$ProductsStateTearOff();

  _ProductsState call(
      {required bool isWidgetSelected,
      required bool isLoading,
      required Widget child}) {
    return _ProductsState(
      isWidgetSelected: isWidgetSelected,
      isLoading: isLoading,
      child: child,
    );
  }
}

/// @nodoc
const $ProductsState = _$ProductsStateTearOff();

/// @nodoc
mixin _$ProductsState {
  bool get isWidgetSelected => throw _privateConstructorUsedError;
  bool get isLoading =>
      throw _privateConstructorUsedError; // required Product product,
  Widget get child => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res>;
  $Res call({bool isWidgetSelected, bool isLoading, Widget child});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  final ProductsState _value;
  // ignore: unused_field
  final $Res Function(ProductsState) _then;

  @override
  $Res call({
    Object? isWidgetSelected = freezed,
    Object? isLoading = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      isWidgetSelected: isWidgetSelected == freezed
          ? _value.isWidgetSelected
          : isWidgetSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      child: child == freezed
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc
abstract class _$ProductsStateCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$ProductsStateCopyWith(
          _ProductsState value, $Res Function(_ProductsState) then) =
      __$ProductsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isWidgetSelected, bool isLoading, Widget child});
}

/// @nodoc
class __$ProductsStateCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements _$ProductsStateCopyWith<$Res> {
  __$ProductsStateCopyWithImpl(
      _ProductsState _value, $Res Function(_ProductsState) _then)
      : super(_value, (v) => _then(v as _ProductsState));

  @override
  _ProductsState get _value => super._value as _ProductsState;

  @override
  $Res call({
    Object? isWidgetSelected = freezed,
    Object? isLoading = freezed,
    Object? child = freezed,
  }) {
    return _then(_ProductsState(
      isWidgetSelected: isWidgetSelected == freezed
          ? _value.isWidgetSelected
          : isWidgetSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      child: child == freezed
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_ProductsState extends _ProductsState {
  const _$_ProductsState(
      {required this.isWidgetSelected,
      required this.isLoading,
      required this.child})
      : super._();

  @override
  final bool isWidgetSelected;
  @override
  final bool isLoading;
  @override // required Product product,
  final Widget child;

  @override
  String toString() {
    return 'ProductsState(isWidgetSelected: $isWidgetSelected, isLoading: $isLoading, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductsState &&
            (identical(other.isWidgetSelected, isWidgetSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isWidgetSelected, isWidgetSelected)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.child, child) ||
                const DeepCollectionEquality().equals(other.child, child)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isWidgetSelected) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(child);

  @JsonKey(ignore: true)
  @override
  _$ProductsStateCopyWith<_ProductsState> get copyWith =>
      __$ProductsStateCopyWithImpl<_ProductsState>(this, _$identity);
}

abstract class _ProductsState extends ProductsState {
  const factory _ProductsState(
      {required bool isWidgetSelected,
      required bool isLoading,
      required Widget child}) = _$_ProductsState;
  const _ProductsState._() : super._();

  @override
  bool get isWidgetSelected => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override // required Product product,
  Widget get child => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductsStateCopyWith<_ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}
