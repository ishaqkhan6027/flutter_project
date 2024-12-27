import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/trips_data.dart';
import 'package:flutter_application_1/widgets/custom_siderbar.dart';
import 'package:flutter_application_1/widgets/custtom_text_field.dart';
import 'package:flutter_application_1/widgets/location_card.dart';
import 'package:flutter_application_1/widgets/Joins_chedule.dart';
import 'package:flutter_application_1/widgets/colorsWidget.dart';
import 'package:flutter_application_1/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getPrimeryColor(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(children: [
                Container(
                    margin: const EdgeInsets.all(8),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/image4.jpg',
                        fit: BoxFit.cover,
                      ),
                    )),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Vani",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Goood Evening",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explore the",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Beautiful world!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: CustomTextField(
                          labelText: "Search",
                          icon: Icons.search,
                        )),
                        Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: getSecondaryColor(),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.tune,
                                color: Colors.white,
                              ),
                            ))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                              child: Text(
                            "Travel Place",
                            style: TextStyle(
                                color: getSecondaryColor(),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                          Text(
                            "Show More>",
                            style: TextStyle(color: Colors.white70),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Row(
                            children: [
                              customSideNavigationWidget(text: 'All'),
                              const SizedBox(
                                width: 25,
                              ),
                              customSideNavigationWidget(text: 'Popular'),
                              const SizedBox(
                                width: 25,
                              ),
                              customSideNavigationWidget(text: 'Latest')
                            ],
                          ),
                        ),
                      ),
                      Row(
                          children: trips
                              .map((trip) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: LocationCard(
                                        imagePath: trip.imagePath,
                                        location: trip.location,
                                        country: trip.country,
                                        duration: trip.duration,
                                        price: trip.price),
                                  ))
                              .toList())
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Text(
                      "My Schedule",
                      style: TextStyle(
                          color: getSecondaryColor(),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
                    Text(
                      "Show More>",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                      children: Joinedtrips.map((trip) => Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: JoinShedule(
                                imagePath: trip.imagePath,
                                location: trip.location,
                                country: trip.country),
                          )).toList())),
            ],
          ),
        ),
      ),
    );
  }
}
