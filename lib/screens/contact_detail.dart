import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Name'),
      ),
      body: Column(
        children: <Widget>[
          TextField(),
          TextField(),
          TextField(), 
        ],
      ),
    );
  }
}
