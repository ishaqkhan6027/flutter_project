import 'package:flutter/material.dart';

class NotificationModel {
  final IconData icon;
  final String title;
  final String message;
  final String time;

  NotificationModel({
    required this.icon,
    required this.title,
    required this.message,
    required this.time,
  });
}
