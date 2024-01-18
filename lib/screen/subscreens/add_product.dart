import 'package:cryce/widgets/add_product_form.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget{
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: AddProductForm(),
    );
  }
}