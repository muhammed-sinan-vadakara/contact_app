import 'package:flutter/material.dart';
import 'package:object_box/object%20box/entityclass.dart';
import 'package:object_box/object%20box/objectstore.dart';
import 'package:object_box/provider/contact_provider_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'contact_provider.g.dart';

@riverpod
class ContactProvider extends _$ContactProvider {
  late final TextEditingController nameController;
  late final TextEditingController numberController;
  late final TextEditingController emailController;

  @override
  ContactProviderState build() {
    nameController = TextEditingController();
    numberController = TextEditingController();
    emailController = TextEditingController();

    ref.onDispose(dispose);

    return ContactProviderState(
      contacts: ObjectBox.instance.contactBox.getAll(),
      newContactImage: null,
    );
  }

  void dispose() {
    nameController.dispose();
    emailController.dispose();
    numberController.dispose();
  }

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "type something";
    } else if (state.contacts.contains(Contacts(name: value, number: ""))) {
      return "Name already exists..";
    }
    return null;
  }

  void pickImage(String imagePath) {
    state = state.copyWith(newContactImage: imagePath);
  }

  void resetInput() {
    nameController.clear();
    numberController.clear();
    emailController.clear();
    state = state.copyWith(newContactImage: null);
  }

  void addContact() {
    final name = nameController.text;
    final number = numberController.text;
    final email = emailController.text;

    final contactToAdd = Contacts(
      name: name,
      number: number,
      email: email,
      image: state.newContactImage,
    );
    ObjectBox.instance.contactBox.put(contactToAdd);
    state = state.copyWith(contacts: [...state.contacts, contactToAdd]);
    resetInput();
  }

  void delContact(int index) {
    final updatedContacts = [...state.contacts];
    ObjectBox.instance.contactBox.remove(state.contacts[index].id);
    updatedContacts.removeAt(index);
    state = state.copyWith(contacts: updatedContacts);
  }

  void updateContact(int index) {
    final name = nameController.text;
    final number = numberController.text;
    final email = emailController.text;

    final contactToUpdate = Contacts(
      id: state.contacts[index].id,
      name: name,
      number: number,
      email: email,
      image: state.newContactImage,
    );
    final updatedContacts = [...state.contacts];
    updatedContacts[index] = contactToUpdate;
    ObjectBox.instance.contactBox.put(contactToUpdate);
    state = state.copyWith(contacts: updatedContacts);
    resetInput();
  }
}
