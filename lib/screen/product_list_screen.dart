import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:osad_batch_seven/model/product.dart';
import 'package:osad_batch_seven/screen/add_new_product_screen.dart';
import 'package:osad_batch_seven/widget/product_item.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> productList = [];
  bool _inProgress= false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProductList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        actions: [
          IconButton(onPressed: (){
            getProductList();
          }, icon: const Icon(Icons.refresh))
        ],
      ),
      body: _inProgress ? const Center(
        child: CircularProgressIndicator(),
      ): Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.separated(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return buildProductList(
                product: productList[index],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 16,
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const AddNewProductScreen();
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> getProductList() async {

    _inProgress= true;
    print('Requesting');
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct');
    Response response = await get(uri);
    print(response);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      setState(() {});
      productList.clear();
      Map<Stream, dynamic> jsonResponse = jsonDecode(response.body);
      for (var item in jsonResponse['date']) {
        Product product = Product(id: item['_id'],
            produstName: item['produstName'] ?? '',
            productcode: item ['productcode'] ?? '',
            productImage: item ['productImage'] ?? '',
            unitePrice: item['unitePrice'] ?? '',
            quantity: item ['quantity'] ?? '',
            totalPrice: item ['totalPrice'] ?? '',
            createdAt: item ['createdAt'] ?? '',
        );
        productList.add(product);
      }
    }
    setState(() {});
  }
}
