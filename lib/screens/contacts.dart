import 'package:beeps/blocs/contacts_bloc.dart';
import 'package:beeps/blocs/contacts_event.dart';
import 'package:beeps/blocs/contacts_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ContactsBloc contactsBloc = BlocProvider.of<ContactsBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: BlocBuilder(
        bloc: contactsBloc,
        builder: (BuildContext context, ContactsState state) {
          Widget child = RaisedButton(
            child: Text('Load'),
            onPressed: () => contactsBloc.dispatch(LoadContacts()),
          );

          if (state is ContactsLoaded) {
            child = ListView.builder(
              itemCount: state.contacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    state.contacts[index].name,
                  ),
                  subtitle: Text(
                    state.contacts[index].numbers
                        .reduce((total, number) => '$total, $number'),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                    child:
                        Text(state.contacts[index].nextCallDate.day.toString()),
                  ),
                  trailing: Icon(Icons.phone),
                );
              },
            );
          }
          return child;
        },
      ),
    );
  }
}
