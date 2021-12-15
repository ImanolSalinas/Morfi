import 'package:flutter/material.dart';

class IconImageButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Image image;

  final VoidCallback onPressed;

  IconImageButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.color,
      required this.image,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      width: width,
      height: height,
      child: image
    );
  }
}
