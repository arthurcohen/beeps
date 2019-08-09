import 'package:beeps/blocs/contacts_event.dart';
import 'package:beeps/blocs/contacts_state.dart';
import 'package:beeps/models/contact.dart';
import 'package:bloc/bloc.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  @override
  ContactsState get initialState => ContactsNotFound();

  @override
  Stream<ContactsState> mapEventToState(ContactsEvent event) async* {
    if (event is LoadContacts) {
      List<Contact> contacts = [
        Contact(1, 'Arthur', ['998280984'], DateTime(2019, 8, 8)),
        Contact(2, 'Alexandra', ['996307794'], DateTime(2019, 8, 8)),
        Contact(3, 'Marcia', ['988736671'], DateTime(2019, 8, 8)),
        Contact(4, 'Bia', ['999307984'], DateTime(2019, 8, 8)),
      ];

      yield ContactsLoaded(contacts);
    }
  }

}
