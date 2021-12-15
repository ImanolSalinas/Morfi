import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
   final AssetImage image;

  ImageButton({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image
          )
        ),
      ),
    );
  }
}
