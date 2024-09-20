import 'package:flutter/material.dart';

class DeleteList extends StatefulWidget {
  const DeleteList({super.key});

  @override
  State<DeleteList> createState() => _DeleteListState();
}

class _DeleteListState extends State<DeleteList> {
  final TextEditingController _productNameTEController = TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildNewProductForm(),
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
            decoration: InputDecoration(hintText: 'Name', labelText: 'Product Name'),
            validator: (value) => value!.isEmpty ? 'Please enter a product name' : null,
          ),
          TextFormField(
            controller: _unitPriceTEController,
            decoration: InputDecoration(hintText: 'Unit price', labelText: 'Unit price'),
            validator: (value) => value!.isEmpty ? 'Please enter a unit price' : null,
          ),
          TextFormField(
            controller: _totalPriceTEController,
            decoration: InputDecoration(hintText: 'Total price', labelText: 'Total price'),
            validator: (value) => value!.isEmpty ? 'Please enter a total price' : null,
          ),
          TextFormField(
            controller: _imageTEController,
            decoration: InputDecoration(hintText: 'Image URL', labelText: 'Product Image'),
            validator: (value) => value!.isEmpty ? 'Please enter an image URL' : null,
          ),
          TextFormField(
            controller: _codeTEController,
            decoration: InputDecoration(hintText: 'Product code', labelText: 'Product code'),
            validator: (value) => value!.isEmpty ? 'Please enter a product code' : null,
          ),
          TextFormField(
            controller: _quantityTEController,
            decoration: InputDecoration(hintText: 'Quantity', labelText: 'Quantity'),
            validator: (value) => value!.isEmpty ? 'Please enter a quantity' : null,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: Size.fromWidth(double.maxFinite)),
            onPressed: _onTapDeleteProductButton,
            child: Text('DELETE'),
          ),
        ],
      ),
    );
  }

  void _onTapDeleteProductButton() {
    if (_formkey.currentState!.validate()) {
      // Perform delete operation here
      // For example, send a request to delete the product from the database
      // Show feedback to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Product deleted successfully!')),
      );

      // Optionally, clear the fields after deletion
      _clearFields();
    }
  }

  void _clearFields() {
    _productNameTEController.clear();
    _unitPriceTEController.clear();
    _totalPriceTEController.clear();
    _imageTEController.clear();
    _codeTEController.clear();
    _quantityTEController.clear();
  }

  @override
  void dispose() {
    _productNameTEController.dispose();
    _unitPriceTEController.dispose();
    _totalPriceTEController.dispose();
    _imageTEController.dispose();
    _codeTEController.dispose();
    _quantityTEController.dispose();
    super.dispose();
  }
}
