import 'package:cryce/widgets/searchbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(24.0), 
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cryce',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.lightGreen
                  )),
                CircleAvatar(
                  backgroundImage: AssetImage('images/kucing.png'),
                )
              ],
            )
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            child: Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                 Image.asset(
                    'images/bannerhome.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                ),
                const Positioned(
                  top: -20,
                  left: 24,
                  right: 24,
                  child: SearchBarWidget(),
                )       
              ],
            ),
          ), 
        ],
      )
    );
  }
}