import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const ListTile(
              title: Text('Web and design'),
              tileColor: Colors.green,
            ),
            ListTile(
              title: const Text('Product'),
              tileColor: Colors.grey.shade200,
            ),
            const ListTile(
              title: Text('Setting'),
            ),
          ],
        ),
      ),
    );
  }
}