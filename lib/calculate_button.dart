import 'package:flutter/material.dart';

import 'constants.dart';

class CalculateButton extends StatelessWidget {
  final String? buttonText;
  final void Function()? onPressed;

  CalculateButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Text(
          buttonText!,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
