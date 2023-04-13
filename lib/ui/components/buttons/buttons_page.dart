import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ButtonsPage extends StatelessWidget {
  ButtonsPage({super.key});

  List<Widget> _buttonsList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Wrap(
        children: _buttonsList,
      ),
    );
  }
}
