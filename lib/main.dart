import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = ['item1', 'item2', 'item3', 'item4', 'item5'];

    return MaterialApp(
        title: 'Good app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text('App Bar Title')),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                    title: Text(item),
                    subtitle: Text('Subtitle for $item'),
                    leading: Icon(Icons.star),
                    trailing: Icon(Icons.more_vert),
                    onTap: () {
                      print('You just taped on $item');
                    });
              }),
        ));
  }
}
