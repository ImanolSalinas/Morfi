import 'package:flutter/material.dart';

class AceptTerms extends StatelessWidget {
  final Text text;
  bool isChecked = false;

  AceptTerms({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: this.isChecked,
          checkColor: Colors.white,
          activeColor: Colors.yellow,
          
          onChanged: (bool) {
            this.isChecked = !this.isChecked;
          },
        ),
        text,
        
      ],
    );
  }
}
