import 'package:flutter/material.dart';


class GenericButton extends StatelessWidget {
  final Color color;
  final Text text;
  final VoidCallback onPressed;

  GenericButton(
      {Key? key,
      required this.color,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 8.0,
            side: BorderSide(width: 2.0, color: color),
            primary: color,
            shadowColor: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [text],
        ),
        onPressed: onPressed);
  }
}
