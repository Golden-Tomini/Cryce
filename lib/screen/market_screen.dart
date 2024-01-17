import 'package:cryce/screen/subscreens/add_product.dart';
import 'package:cryce/widgets/searchbar_widget.dart';
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
            margin: const EdgeInsets.symmetric(vertical:24.0, horizontal: 24.0), 
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
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
                      icon: const Icon(Icons.shopping_cart_outlined)
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.favorite_border_rounded)
                    ), 
                  ],
                )
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                    backgroundColor: const Color.fromRGBO(109, 170, 43, 1),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 4),
                    child: Column(
                      mainAxisAlignment:  MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Toko',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                    backgroundColor: const Color.fromRGBO(109, 170, 43, 1),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 4),
                    child: Column(
                      mainAxisAlignment:  MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.fastfood_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Makanan',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    backgroundColor: const Color.fromRGBO(109, 170, 43, 1),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 4),
                    child: Column(
                      mainAxisAlignment:  MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.receipt_long_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Pesanan',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(24),
            child: const SearchBarWidget(textPlaceholder: 'Cari makanan',),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            child:const  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Makanan Terbaru',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Lihat semua',
                  style: TextStyle(fontSize: 14, decoration: TextDecoration.underline),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}