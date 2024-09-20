import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _productNameTEController =
      TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool _inProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new Product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _buildNewProductForm(),
        ),
      ),
    );
  }

  Form _buildNewProductForm() {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            controller: _productNameTEController,
            decoration:
                InputDecoration(hintText: 'Name', labelText: 'Product Name'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a value valid';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _unitPriceTEController,
            decoration: InputDecoration(
                hintText: 'Unit price', labelText: 'Unit price'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a value valid';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _totalPriceTEController,
            decoration: InputDecoration(
                hintText: 'Total price', labelText: 'Total price'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a value valid';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _imageTEController,
            decoration:
                InputDecoration(hintText: 'Image', labelText: 'Product Image'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a value valid';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _codeTEController,
            decoration: InputDecoration(
                hintText: 'Product code', labelText: 'Product code'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a value valid';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _quantityTEController,
            decoration:
                InputDecoration(hintText: 'Quantity', labelText: 'Quantity'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a value valid';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          _inProgress
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size.fromWidth(double.maxFinite),
                  ),
                  onPressed: _onTapaddProductButton,
                  child: Text('Add product'),
                ),
        ],
      ),
    );
  }

  void _onTapaddProductButton() {
    if (_formkey.currentState!.validate()) {
      addnewProduct();
    }
  }

  Future<void> addnewProduct() async {
    _inProgress = true;
    setState(() {});
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/CreateProduct');
    Map<String, dynamic> requestBody = {
      "Img": _imageTEController.text,
      "ProductCode": _codeTEController.text,
      "ProductName": _productNameTEController.text,
      "ProductName": _productNameTEController.text,
      "TotalPrice": _totalPriceTEController.text,
      "UnitePrice": _unitPriceTEController.text,
      "Qty": _quantityTEController.text,
    };
    Response response = await post(uri,
        headers: {"Content-type": "application/json"},
        body: jsonEncode(requestBody));
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      _clearTextField();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('new Product added')));
    }
    _inProgress = false;
    setState(() {});
  }

  void _clearTextField() {
    _productNameTEController.clear();
    _unitPriceTEController.clear();
    _totalPriceTEController.clear();
    _imageTEController.clear();
    _codeTEController.clear();
    _quantityTEController.clear();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _productNameTEController.dispose();
    _unitPriceTEController.dispose();
    _totalPriceTEController.dispose();
    _imageTEController.dispose();
    _codeTEController.dispose();
    _quantityTEController.dispose();
    super.dispose();
  }
}
