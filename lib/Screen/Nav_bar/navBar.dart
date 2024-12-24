import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_review_app/Router/destination.dart';
import 'package:movie_review_app/Screen/drawer/slideMenu.dart';
import 'package:movie_review_app/widgets/IconDrawer.dart';

// import '../../Models/Models.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('NavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: DrawerMenu(),
        appBar: AppBar(
          leading: const IconDrawer(),
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          centerTitle: false,
          titleSpacing: 0,
          elevation: 0.0,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    child: Image.asset(
                      'assets/Logo1.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ]),
          ),
        ),
        body: navigationShell,
        bottomNavigationBar: NavigationBar(
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: navigationShell.goBranch,
          indicatorColor: Theme.of(context).primaryColor,
          destinations: destinations
              .map((destinations) => NavigationDestination(
                    icon: Icon(destinations.icon),
                    label: destinations.label,
                    selectedIcon: Icon(
                      destinations.icon,
                      color: Colors.white,
                    ),
                  ))
              .toList(),
        ),
      );
}
