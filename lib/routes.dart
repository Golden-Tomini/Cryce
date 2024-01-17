import 'package:cryce/screen/article_screen.dart';
import 'package:cryce/screen/comunity_screen.dart';
import 'package:cryce/screen/home_screen.dart';
import 'package:cryce/screen/market_screen.dart';
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
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          NavigationDestination(
            icon: Icon(Icons.ads_click_rounded),
            label: 'Market',
          ),
          NavigationDestination(
            icon: Icon(Icons.newspaper_rounded),
            label: 'Artikel',
          ),
          NavigationDestination(
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
          const HomeScreen(),
          const MarketScreen(),
          const ArticleScreen(),
          const ComunityScreen()
        ][currentIndex],
      ),
    );
  }
}