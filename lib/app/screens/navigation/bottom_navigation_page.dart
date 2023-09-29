import 'package:amori/app/auto_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        FeelingsRoute(),
        HomeRoute(),
        FavoritesRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color.fromRGBO(201, 201, 201, 1),
              ),
            ),
          ),
          child: BottomNavigationBar(
            selectedItemColor: const Color.fromRGBO(166, 166, 166, 1),
            selectedLabelStyle: const TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(166, 166, 166, 1),
              fontWeight: FontWeight.w400,
            ),
            iconSize: 34,
            selectedIconTheme: IconThemeData(
              size: 40,
              color: Theme.of(context).colorScheme.primary,
            ),
            unselectedIconTheme: const IconThemeData(
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: "Feelings",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mood),
                label: "Favorites",
              ),
            ],
          ),
        );
      },
    );
  }
}
