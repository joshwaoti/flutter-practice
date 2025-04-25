import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Example App',
        home: Scaffold(
            appBar: AppBar(
              title: Text('List View'),
            ),
            body: ListView(children: [
              ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person One'),
                  subtitle: Text('email'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () => print('ListTile was Tapped')),
              ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person Two'),
                  subtitle: Text('email'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () => print('ListTile was Tapped')),
              ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Person Three'),
                  subtitle: Text('email'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () => print('ListTile was Tapped'))
            ])));
  }
}
 