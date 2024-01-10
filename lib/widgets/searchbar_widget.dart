import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget{
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => MySearchBarWidgets();
}

class MySearchBarWidgets extends State<SearchBarWidget>{
  @override
  Widget build(BuildContext context){
    return SearchAnchor(
      builder: (BuildContext context, SearchController controller) {
        return SearchBar(
          controller: controller,
          padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 16.0)),
          onTap: () {controller.openView();},
          onChanged: (_) {controller.openView();},
          leading: const Icon(Icons.search),
          hintText: 'Cari makanan, artikel, komunitas',
          hintStyle: MaterialStateProperty.resolveWith((states) {return TextStyle(color: Color.fromARGB(96, 105, 105, 105));}),
          shadowColor: MaterialStateProperty.resolveWith((states) {return Colors.transparent;}),
        );
      }, suggestionsBuilder: (BuildContext context, SearchController controller) {
        return List<ListTile>.generate(5, (int index) {
          final String item = 'item $index';
          return ListTile(
            title: Text(item),
            onTap: () {
              setState(() {
                controller.closeView(item);
              });
            },
          );
        });
      },
    );
  }
}