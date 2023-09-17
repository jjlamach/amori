import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Favorites',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Click on a day to relive your best moments',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Expanded(
                child: ListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
