import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:object_box/object%20box/entityclass.dart';

part 'contact_provider_state.freezed.dart';

@freezed
class ContactProviderState with _$ContactProviderState {
  factory ContactProviderState({
    required List<Contacts> contacts,
    String? newContactImage,
  }) = _ContactProviderState;
}
