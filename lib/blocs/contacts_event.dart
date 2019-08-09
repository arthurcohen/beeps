import 'package:beeps/models/contact.dart';
import 'package:equatable/equatable.dart';

class ContactsEvent extends Equatable {
  ContactsEvent({List<dynamic> props = const <dynamic>[]}): super([]..addAll(props));
}

class LoadContacts extends ContactsEvent {}

class ContactManipulation extends ContactsEvent {
  Contact contact;
  ContactManipulation(this.contact):super(props: [contact]);
}

class EditContact extends ContactManipulation {
  EditContact(contact):super(contact);
}

class SaveContact extends ContactManipulation {
  SaveContact(contact):super(contact);
}
