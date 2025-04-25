import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _todos = ['task 1', 'task 2', 'task 3'];

  void _addTodo() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          String newTodo = '';

          return AlertDialog(
            title: Text('Add Todo'),
            content: TextField(
              onChanged: (value) {
                newTodo = value;
              },
              decoration: InputDecoration(hintText: 'Enter todo'),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Add'),
                onPressed: () {
                  setState(() {
                    _todos.add(newTodo);
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _addTodo,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              _todos[index],
              style: TextStyle(
                  decoration: _todos[index].startsWith('-')
                      ? TextDecoration.lineThrough
                      : null),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  if (_todos[index].startsWith('-')) {
                    _todos[index] = _todos[index].substring(1);
                  } else {
                    _todos[index] = '-${_todos[index]}';
                  }
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        child: Icon(Icons.add),
      ),
    );
  }
}
