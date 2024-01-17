import 'package:cryce/di/injection.dart';
import 'package:cryce/model/foodcategories.dart';
import 'package:cryce/screen/market/market_view_model.dart';
import 'package:cryce/screen/subscreens/add_product.dart';
import 'package:cryce/widgets/searchbar_widget.dart';
import 'package:flutter/material.dart';

class MarketScreen extends StatelessWidget {
  final viewModel = MarketViewModel(repository: Injection.provideRepository());
  late final List<FoodCategories> foodCategories;

  MarketScreen({super.key}) {
    foodCategories = viewModel.getAllFoodCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
            margin:
                const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Market',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.lightGreen)),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const AddProduct();
                          }));
                        },
                        icon: const Icon(Icons.shopping_cart_outlined)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border_rounded)),
                  ],
                )
              ],
            )),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    backgroundColor: const Color.fromRGBO(109, 170, 43, 1),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Toko',
                          maxLines: 1,
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    backgroundColor: const Color.fromRGBO(109, 170, 43, 1),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.fastfood_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Makanan',
                          maxLines: 1,
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: const Color.fromRGBO(109, 170, 43, 1),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.receipt_long_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Pesanan',
                          maxLines: 1,
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(24),
          child: const SearchBarWidget(
            textPlaceholder: 'Cari makanan',
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          height: 100,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 16.0,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: foodCategories.length,
            itemBuilder: (context, i) {
              final foodCategorie = foodCategories[i];
              return InkWell(
                child: Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(foodCategorie.imageUrl),
                          minRadius: 30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          foodCategorie.title,
                          style: const TextStyle(fontSize: 10),
                        )
                      ],
                    )),
              );
            },
          ),
        ),
        Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            child: const Column(
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Makanan Terbaru',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Lihat semua',
                      style: TextStyle(
                          fontSize: 14, decoration: TextDecoration.underline),
                    )
                  ],
                ),
                SizedBox(height: 16.0),
              ],
            )),
      ],
    ));
  }
}
