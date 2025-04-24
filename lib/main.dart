import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Dialog Demo', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _inputText = '';

  void _showInputDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          TextEditingController controller = TextEditingController();
          return AlertDialog(
              title: Text("Enter some text"),
              content: TextField(
                controller: controller,
                decoration: InputDecoration(hintText: 'Enter some Text'),
              ),
              actions: <Widget>[
                TextButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                    child: Text('Save'),
                    onPressed: () {
                      setState(() {
                        _inputText = controller.text;
                      });
                      Navigator.of(context).pop();
                    })
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dialog Demo'),
        ),
        body: Center(
            child: Text(
          _inputText.isEmpty ? 'Type icon to enter text' : 'You entered: $_inputText',
          style: TextStyle(fontSize: 20),
        )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _showInputDialog,
          tooltip: 'Add a text',
          child: Icon(Icons.edit),
        ));
  }
}
