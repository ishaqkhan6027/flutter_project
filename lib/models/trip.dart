import 'package:flutter/widgets.dart';

class Trip {
  String imagePath;
  String location;
  String country;
  String duration;
  int price;

  Trip({
    required this.imagePath,
    required this.location,
    required this.country,
    required this.duration,
    required this.price,
  });
}
