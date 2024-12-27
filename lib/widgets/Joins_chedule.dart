import 'package:flutter/material.dart';

class JoinShedule extends StatelessWidget {
  final String imagePath;
  final String location;
  final String country;
  const JoinShedule({
    super.key,
    required this.imagePath,
    required this.location,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.symmetric(vertical: 18)),
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
              ],
            )),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 165, 237, 71),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                textStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              child: const Text(
                "Joined",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
