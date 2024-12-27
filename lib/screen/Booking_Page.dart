import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/bNavigationbar.dart';
import 'package:flutter_application_1/screen/home_screen.dart';
import 'package:flutter_application_1/screen/onboarding_screen.dart';
import 'package:flutter_application_1/widgets/colorsWidget.dart';
import 'package:flutter_application_1/widgets/CustomElevatedButton.dart';

class TravelDetailPage extends StatelessWidget {
  final String imagePath;
  final String location;
  final String country;
  final String duration;
  const TravelDetailPage({
    super.key,
    required this.imagePath,
    required this.location,
    required this.country,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: getPrimeryColor(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        imagePath,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Row(
                    children: [
                      Container(
                        width: 360,
                        height: 60,
                        decoration: BoxDecoration(
                          color: getSecondaryColor(),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4, left: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "25° Sunny",
                                style: TextStyle(
                                  color: getThirdColor(),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                country,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: 10,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("./assets/images/image9.png")),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    location,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 85,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        "1 Lakh/person",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                "Overview",
                style: TextStyle(
                  color: Color.fromARGB(255, 165, 237, 71),
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.access_time,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Duration",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            duration,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        "Ratting",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "4.8",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "out of 5",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5, top: 10),
              child: Text(
                "We have the best rooms in town. Our services are always top-notch, leaving customers highly impressed. Refund policies apply if you book and cancel our rooms.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 48, 48, 48),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(Icons.flight,
                        color: Color.fromARGB(255, 165, 237, 71)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 48, 48, 48),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(Icons.wifi,
                        color: Color.fromARGB(255, 165, 237, 71)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 48, 48, 48),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(Icons.local_hotel,
                        color: Color.fromARGB(255, 165, 237, 71)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 48, 48, 48),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(Icons.directions_car,
                        color: Color.fromARGB(255, 165, 237, 71)),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 165, 237, 71),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Book Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: CustomElevatedButton(
                  text: "Go Back",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => bNavigationbar(),
                        ));
                  },
                  backgroundColor: getPrimeryColor(),
                  borderColor: getSecondaryColor(),
                  textColor: getSecondaryColor()),
            )
          ],
        ),
      ),
    );
  }
}
