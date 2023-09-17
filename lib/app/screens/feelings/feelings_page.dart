import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FeelingsPage extends StatelessWidget {
  const FeelingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Feelings',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CalendarDatePicker(
          initialDate: DateTime.now(),
          firstDate: DateTime.utc(2023, 1, 1),
          lastDate: DateTime.utc(2023, 12, 31),
          onDateChanged: (value) {},
        ),
      ),
    );
  }
}
