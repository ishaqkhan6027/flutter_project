import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Booking_Page.dart';

class LocationCard extends StatelessWidget {
  final String imagePath;
  final String location;
  final String country;
  final String duration;
  final int price;

  const LocationCard({
    super.key,
    required this.imagePath,
    required this.location,
    required this.country,
    required this.duration,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TravelDetailPage(
              country: country,
              imagePath: imagePath,
              location: location,
              duration: duration,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(imagePath),
                ),
                Positioned(
                  right: 5,
                  top: 5,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 0.45),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Icon(
                      Icons.bookmark,
                      color: Color.fromARGB(255, 165, 237, 71),
                      size: 15,
                    ),
                  ),
                ),
                Positioned(
                  right: 5,
                  bottom: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 0.45),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      '\$ $price',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                location,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 165, 237, 71),
                    ),
                    Text(
                      country,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Text(duration, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
