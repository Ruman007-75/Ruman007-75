import 'package:flutter/material.dart';
import 'package:osad_batch_seven/model/product.dart';
import 'package:osad_batch_seven/screen/update_product_screen.dart';

class buildProductList extends StatelessWidget {
  const buildProductList({
    super.key, required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      tileColor: Colors.white,
      //tileColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text(product.produstName),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product code: \$${product.productcode}'),
          Text('Price: \$${product.unitePrice}'),
          Text('Quantity:${product.quantity}'),
          Text('Total Price: \$${product.totalPrice}'),
          Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const UpdateProductScreen();
                      }),
                    );
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text('Edit')),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.delete_outlined),
                  label: const Text(
                    'Delete',
                    style: TextStyle(color: Colors.red),
                  )),
              //TextButton(onPressed: () {}, child: const Text('Delete')),
            ],
          )
        ],
      ),
    );
  }
}