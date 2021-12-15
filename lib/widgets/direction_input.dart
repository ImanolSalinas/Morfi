import 'package:flutter/material.dart';
import 'package:flutter_vsc/my_colors.dart';

class DirectionInput extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;
  final String labelText;

  DirectionInput(
      {Key? key,
      required this.icon,
      required this.labelText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: IconButton(
            icon: icon,
            onPressed: onPressed,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.orangeBorder, width: 2),
          ),
        ),
        keyboardType: TextInputType.streetAddress,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
