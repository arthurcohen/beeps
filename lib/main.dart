import 'package:beeps/blocs/contacts_bloc.dart';
import 'package:beeps/screens/contacts.dart';
import 'package:beeps/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('teste');
    return MultiBlocProvider(
      providers: [
        BlocProvider<ContactsBloc>(
          builder: (context) => ContactsBloc(),
        )
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => Login(),
          '/contacts': (context) => Contacts(),
        },
      ),
    );
  }
}
