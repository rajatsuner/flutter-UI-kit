import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ui_kit/ui/components/buttons/button1.dart';

class ButtonsPage extends StatelessWidget {
  ButtonsPage({super.key});

  List<Widget> _buttonsList = [Button1()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Wrap(
        spacing: 10,
        children: _buttonsList,
      ),
    );
  }
}
