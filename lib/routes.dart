import 'package:cryce/screen/article/article_screen.dart';
import 'package:cryce/screen/comunity/comunity_screen.dart';
import 'package:cryce/screen/home/home_screen.dart';
import 'package:cryce/screen/market/market_screen.dart';
import 'package:flutter/material.dart';

class Routes extends StatefulWidget{
  const Routes({Key? key}) : super(key: key);

  @override
  State<Routes> createState() => MyRoutes();
}

class MyRoutes extends State<Routes>{
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        indicatorColor: Colors.lightGreen,
        selectedIndex: currentIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon:  Icon(Icons.home, color: Colors.white),
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          NavigationDestination(
            selectedIcon:  Icon(Icons.ads_click_rounded, color: Colors.white),
            icon: Icon(Icons.ads_click_rounded,),
            label: 'Market',
          ),
          NavigationDestination(
            selectedIcon:  Icon(Icons.newspaper_rounded, color: Colors.white),
            icon: Icon(Icons.newspaper_rounded),
            label: 'Artikel',
          ),
          NavigationDestination(
            selectedIcon:  Icon(Icons.message_rounded, color: Colors.white),
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.message_rounded),
            ),
            label: 'Komunitas',
          ),
        ],
      ),
      body: SafeArea(
        child: <Widget>[
          HomeScreen(),
          MarketScreen(),
          ArticleScreen(),
          ComunityScreen()
        ][currentIndex],
      ),
    );
  }
}