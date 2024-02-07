import 'package:flutter/material.dart';
import 'package:water_drop_bottom_nav_bar/pages/email.dart';
import 'package:water_drop_bottom_nav_bar/pages/favorite.dart';
import 'package:water_drop_bottom_nav_bar/pages/file.dart';
import 'package:water_drop_bottom_nav_bar/pages/home.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  final pages = [Home(), Favorite(), File(), Email()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25),),
        child: WaterDropNavBar(
          backgroundColor: Theme.of(context).primaryColor,
          inactiveIconColor: Colors.white,
          waterDropColor: const Color.fromRGBO(0, 121, 255, 1),
          iconSize: 35,
          bottomPadding: 15,
          barItems: [
            BarItem(filledIcon: Icons.home_rounded, outlinedIcon: Icons.home_outlined),
            BarItem(filledIcon: Icons.favorite_rounded, outlinedIcon: Icons.favorite_outline),
            BarItem(filledIcon: Icons.folder_rounded, outlinedIcon: Icons.folder_outlined),
            BarItem(filledIcon: Icons.email_rounded, outlinedIcon: Icons.email_outlined),
          ],
          selectedIndex: selectedIndex,
          onItemSelected: (index){
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
