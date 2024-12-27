import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/notification.dart';

List<NotificationModel> notifications = [
  NotificationModel(
    icon: Icons.flight_takeoff,
    title: "Flight Booking Confirmed",
    message: "Your flight to Paris is confirmed. Check-in opens in 24 hours.",
    time: "5m ago",
  ),
  NotificationModel(
    icon: Icons.hotel,
    title: "Hotel Reservation",
    message: "Your stay at Hilton Hotel in Paris is reserved.",
    time: "30m ago",
  ),
  NotificationModel(
    icon: Icons.local_offer,
    title: "Special Promotion",
    message: "Save 20% on your next booking with code TRAVEL20.",
    time: "1h ago",
  ),
  NotificationModel(
    icon: Icons.event,
    title: "Activity Reminder",
    message: "Your Eiffel Tower guided tour starts tomorrow at 9 AM.",
    time: "2h ago",
  ),
  NotificationModel(
    icon: Icons.directions_car,
    title: "Car Rental Confirmed",
    message: "Your car rental from Paris Airport is confirmed.",
    time: "10m ago",
  ),
  NotificationModel(
    icon: Icons.event_available,
    title: "Tour Reminder",
    message: "Your Louvre Museum guided tour starts at 2 PM tomorrow.",
    time: "1h ago",
  ),
  NotificationModel(
    icon: Icons.map,
    title: "New Destination Alert",
    message: "Explore our latest deals to Rome! Limited-time offers available.",
    time: "3h ago",
  ),
  NotificationModel(
    icon: Icons.monetization_on,
    title: "Refund Processed",
    message:
        "Your refund for the canceled trip to New York has been processed.",
    time: "6h ago",
  ),
  NotificationModel(
    icon: Icons.airplane_ticket,
    title: "Flight Change Alert",
    message:
        "Your flight to Dubai has been rescheduled to 5 PM. Check details.",
    time: "8h ago",
  ),
];
