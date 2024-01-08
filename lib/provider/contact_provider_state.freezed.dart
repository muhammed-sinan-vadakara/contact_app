// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactProviderState {
  List<Contacts> get contacts => throw _privateConstructorUsedError;
  String? get newContactImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactProviderStateCopyWith<ContactProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactProviderStateCopyWith<$Res> {
  factory $ContactProviderStateCopyWith(ContactProviderState value,
          $Res Function(ContactProviderState) then) =
      _$ContactProviderStateCopyWithImpl<$Res, ContactProviderState>;
  @useResult
  $Res call({List<Contacts> contacts, String? newContactImage});
}

/// @nodoc
class _$ContactProviderStateCopyWithImpl<$Res,
        $Val extends ContactProviderState>
    implements $ContactProviderStateCopyWith<$Res> {
  _$ContactProviderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? newContactImage = freezed,
  }) {
    return _then(_value.copyWith(
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contacts>,
      newContactImage: freezed == newContactImage
          ? _value.newContactImage
          : newContactImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactProviderStateImplCopyWith<$Res>
    implements $ContactProviderStateCopyWith<$Res> {
  factory _$$ContactProviderStateImplCopyWith(_$ContactProviderStateImpl value,
          $Res Function(_$ContactProviderStateImpl) then) =
      __$$ContactProviderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Contacts> contacts, String? newContactImage});
}

/// @nodoc
class __$$ContactProviderStateImplCopyWithImpl<$Res>
    extends _$ContactProviderStateCopyWithImpl<$Res, _$ContactProviderStateImpl>
    implements _$$ContactProviderStateImplCopyWith<$Res> {
  __$$ContactProviderStateImplCopyWithImpl(_$ContactProviderStateImpl _value,
      $Res Function(_$ContactProviderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? newContactImage = freezed,
  }) {
    return _then(_$ContactProviderStateImpl(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contacts>,
      newContactImage: freezed == newContactImage
          ? _value.newContactImage
          : newContactImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ContactProviderStateImpl implements _ContactProviderState {
  _$ContactProviderStateImpl(
      {required final List<Contacts> contacts, this.newContactImage})
      : _contacts = contacts;

  final List<Contacts> _contacts;
  @override
  List<Contacts> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  final String? newContactImage;

  @override
  String toString() {
    return 'ContactProviderState(contacts: $contacts, newContactImage: $newContactImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactProviderStateImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.newContactImage, newContactImage) ||
                other.newContactImage == newContactImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_contacts), newContactImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactProviderStateImplCopyWith<_$ContactProviderStateImpl>
      get copyWith =>
          __$$ContactProviderStateImplCopyWithImpl<_$ContactProviderStateImpl>(
              this, _$identity);
}

abstract class _ContactProviderState implements ContactProviderState {
  factory _ContactProviderState(
      {required final List<Contacts> contacts,
      final String? newContactImage}) = _$ContactProviderStateImpl;

  @override
  List<Contacts> get contacts;
  @override
  String? get newContactImage;
  @override
  @JsonKey(ignore: true)
  _$$ContactProviderStateImplCopyWith<_$ContactProviderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
