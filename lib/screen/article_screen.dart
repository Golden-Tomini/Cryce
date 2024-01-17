import 'package:cryce/widgets/searchbar_widget.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget{
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(24.0), 
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Artikel',
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
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                child: const SearchBarWidget(textPlaceholder: 'Cari artikel'),
              ),
              Container(
                margin: const EdgeInsets.all(24),
                child: const Column(
                  children: [
                    Text(
                      'Artikel Terbaru',
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}