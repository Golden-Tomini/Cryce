import 'package:cryce/screen/subscreens/add_product.dart';
import 'package:flutter/material.dart';

class MarketScreen extends StatelessWidget{
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(24.0), 
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Market',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.lightGreen
                  )),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const AddProduct();
                        }));
                      },
                      icon: Icon(Icons.shopping_cart_outlined)
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.favorite_border_rounded)
                    ), 
                  ],
                )
              ],
            )
          ),
        ],
      )
    );
  }
}