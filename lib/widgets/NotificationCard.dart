import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/notification_data.dart';
import 'package:flutter_application_1/models/notification.dart';

class TravelNotificationScreenCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String message;
  final String time;

  const TravelNotificationScreenCard({
    required this.icon,
    required this.title,
    required this.message,
    required this.time,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Card(
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        elevation: 10,
        shadowColor: const Color.fromARGB(255, 165, 237, 71),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), bottomRight: Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(icon, color: Color.fromARGB(255, 165, 237, 71)),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 165, 237, 71),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      message,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 165, 237, 71),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    time,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
