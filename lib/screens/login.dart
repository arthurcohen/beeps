import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BEEPs'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(helperText: 'Login'),
            ),
            TextField(
              decoration: InputDecoration(helperText: 'Password'),
              obscureText: true,
            ),
            RaisedButton(
              child: Text('Login'),
              onPressed: () {
                Navigator.pushNamed(context, '/contacts');
              },
            )
          ],
        ),
      ),
    );
  }
}
