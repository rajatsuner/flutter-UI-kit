import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter UI Kit',
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                elevation: 1,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.black),
                foregroundColor: Colors.black)),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> _componentList = [
    {"name": "Buttons", "path": "abc"},
    {"name": "Input Field"}
  ];

  Widget _listItem(int index) {
    return Card(
      child: ListTile(
        title: Text("${_componentList[index]["name"]}"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI Kit"),
      ),
      body: ListView.builder(
        itemCount: _componentList.length,
        itemBuilder: (context, index) => _listItem(index),
      ),
    );
  }
}
