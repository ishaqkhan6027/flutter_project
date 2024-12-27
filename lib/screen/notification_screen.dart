import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home_screen.dart';
import 'package:flutter_application_1/data/notification_data.dart';
import 'package:flutter_application_1/widgets/NotificationCard.dart';

class TravelNotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Travel Notifications",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return TravelNotificationScreenCard(
            icon: notification.icon,
            title: notification.title,
            message: notification.message,
            time: notification.time,
          );
        },
      ),
    );
  }
}
