import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/routes/app_route.dart';

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
        initialRoute: "/home",
        routes: AppRoute.routeInfo,
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> _componentList = [
    {"name": "Buttons", "path": "/buttons"},
    {"name": "Input Field", "path": "/input-fields"}
  ];

  Widget _listItem(context, int index) {
    return Card(
      child: ListTile(
        onTap: () => Navigator.pushNamed(
            context, _componentList[index]["path"] ?? "error-page"),
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
        itemBuilder: (context, index) => _listItem(context, index),
      ),
    );
  }
}
