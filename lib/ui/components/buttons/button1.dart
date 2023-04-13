import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid,
                color: Color.fromARGB(255, 183, 178, 178)),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Row(
          children: [
            Icon(
              Icons.language_outlined,
              color: Color.fromARGB(255, 98, 116, 221),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "OFFICIAL WEBSITE",
              style: TextStyle(
                  color: Color.fromARGB(255, 98, 116, 221),
                  fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
