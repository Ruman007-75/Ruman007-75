import 'package:flutter/material.dart';
import 'package:osad_batch_seven/screen/update_product_screen.dart';

class buildProductList extends StatelessWidget {
  const buildProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      tileColor: Colors.white,
      //tileColor: Theme.of(context).scaffoldBackgroundColor,
      title: Text('Product name'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product code: CODE'),
          Text('Price: \$120'),
          Text('Quantity:2'),
          Text('Total Price: \$240'),
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