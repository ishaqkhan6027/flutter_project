import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const OnboardingView(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image.asset(
        image,
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1.9,
        fit: BoxFit.contain,
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          )),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            subTitle,
            style: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.8),
                fontSize: 13,
                fontWeight: FontWeight.normal),
          )),
    ]);
  }
}
