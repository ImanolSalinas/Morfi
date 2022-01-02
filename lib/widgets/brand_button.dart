import 'package:flutter/material.dart';

class BrandButton extends StatelessWidget {
  final Color color;
  final Icon icon;
  final Text text;
  final VoidCallback onPressed;

  BrandButton(
      {Key? key,
      required this.color,
      required this.icon,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(320, 45),
            side: BorderSide(width: 2.0, color: color),
            onPrimary: Colors.brown,
            primary: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            SizedBox(
              width: 15,
            ),
            text
          ],
        ),
        onPressed: onPressed);
  }
}
