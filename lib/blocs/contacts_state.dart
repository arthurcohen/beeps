import 'package:beeps/models/contact.dart';
import 'package:equatable/equatable.dart';

class ContactsState extends Equatable {
  List<Contact> contacts;

  ContactsState(this.contacts, {List<dynamic> props = const <dynamic>[]}): super([contacts]..addAll(props));
}

class ContactsLoaded extends ContactsState {
  ContactsLoaded(List<Contact> contacts) : super(contacts);
}

class ContactsNotFound extends ContactsState {
  ContactsNotFound(): super(null);
}
