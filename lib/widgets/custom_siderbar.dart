import 'package:flutter/material.dart';

customSideNavigationWidget({String? text, VoidCallback? onPressed}) {
  return Column(
    children: [
      Container(
        width: 25,
        height: 5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      Text(
        text ?? "Text",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ],
  );
}
