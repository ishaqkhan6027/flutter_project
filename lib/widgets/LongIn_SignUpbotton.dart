import 'package:flutter/material.dart';

class ReusableTextButtonRow extends StatelessWidget {
  final String messageText;
  final String buttonText;
  final VoidCallback onPressed;

  final Color textColor;
  const ReusableTextButtonRow(
      {Key? key,
      required this.messageText,
      required this.buttonText,
      required this.onPressed,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          messageText,
          style: TextStyle(color: textColor),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
          ),
        ),
      ],
    );
  }
}
