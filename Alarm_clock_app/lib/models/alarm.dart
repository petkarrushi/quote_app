import 'package:flutter/material.dart';

class Alarm {
  final int id;
  final TimeOfDay time;
  final String label;
  bool isActive;

  Alarm({
    required this.id,
    required this.time,
    required this.label,
    this.isActive = false,
  });
}
