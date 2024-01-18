import 'dart:math';

import 'package:flutter/material.dart';

class Product {
  String name = '';
  int quantity = 0;
  String description = '';
}

class AddProductForm extends StatefulWidget{
  const AddProductForm({Key? key}) : super(key: key);

  @override
  State<AddProductForm> createState() => MyAddProductForm();
}

class MyAddProductForm extends State<AddProductForm>{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Product _product = Product();

  void _clearForm(){
    setState(() {
      _formKey.currentState?.reset();
      _product = Product();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('images/bosscha.jpg'),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: (){
                          Navigator.pop(context);
                        }, 
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child:  Form(
                key: _formKey,
                child:  Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'masukan nama produk',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'nama produk tidak boleh kosong';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _product.name = value!;
                      },
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'jumlah produk',
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'jumlah tidak boleh kosong';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _product.quantity = int.parse(value!) ?? 0;
                      },
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'masukan deskripsi singkat',
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'deskripsi tidak boleh kosong';
                        }
                        return null;
                      } ,
                      onSaved: (value) {
                        _product.description = value!;
                      },
                    ),
                  ],
                )
              )
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()){
                        _formKey.currentState!.save();

                        
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text('detail produk: ${_product.name}, ${_product.quantity}, ${_product.description}'),
                            );
                          }
                        );
                      }
                    },
                    child:  const Text('Kirim')
                  ),
                  const SizedBox(width: 12,),
                  ElevatedButton(
                    onPressed: _clearForm,
                    child: const Text('Bersihkan'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}