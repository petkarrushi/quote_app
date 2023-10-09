import 'package:alarm_clock_app/models/alarm.dart';
import 'package:flutter/material.dart';
import 'package:alarm_clock_app/models/alarm.dart';

class AlarmList extends StatelessWidget {
  final List<Alarm> alarms;

  AlarmList({required this.alarms});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: alarms.length,
      itemBuilder: (ctx, index) {
        final alarm = alarms[index];
        return ListTile(
          title: Text(alarm.label),
          subtitle: Text('${alarm.time.hour}:${alarm.time.minute}'),
          trailing: Switch(
            value: alarm.isActive,
            onChanged: (value) {
              // Handle alarm activation/deactivation here
            },
          ),
        );
      },
    );
  }
}
