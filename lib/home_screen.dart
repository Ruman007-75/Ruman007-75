import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Bag',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyBagPage(),
    );
  }
}

class MyBagPage extends StatefulWidget {
  @override
  _MyBagPageState createState() => _MyBagPageState();
}

class _MyBagPageState extends State<MyBagPage> {
  // Counters for each item
  int counterPullover = 1;
  int counterTShirt = 1;
  int counterSportDress = 1;

  // Prices for each item
  int pricePullover = 51;
  int priceTShirt = 30;
  int priceSportDress = 45;

  // Method to calculate total amount of items
  int getTotalAmount() {
    return (counterPullover * pricePullover) +
        (counterTShirt * priceTShirt) +
        (counterSportDress * priceSportDress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bag'),
      ),
      body: Column(
        children: [
          // Scrollable list of items
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Pullover item
                  buildBagItem(
                    'assets/image/pullover.jpg', // Replace with actual image path
                    'Pullover',
                    'Black',
                    'L',
                    counterPullover,
                    pricePullover,
                        () {
                      setState(() {
                        if (counterPullover > 1) counterPullover--;
                      });
                    },
                        () {
                      setState(() {
                        counterPullover++;
                      });
                    },
                  ),
                  Divider(),
                  // T-Shirt item
                  buildBagItem(
                    'assets/image/tshirt.jfif', // Replace with actual image path
                    'T-Shirt',
                    'Gray',
                    'L',
                    counterTShirt,
                    priceTShirt,
                        () {
                      setState(() {
                        if (counterTShirt > 1) counterTShirt--;
                      });
                    },
                        () {
                      setState(() {
                        counterTShirt++;
                      });
                    },
                  ),
                  Divider(),
                  // Sport Dress item
                  buildBagItem(
                    'assets/image/tshirt.jfif', // Replace with actual image path
                    'Sport Dress',
                    'Black',
                    'M',
                    counterSportDress,
                    priceSportDress,
                        () {
                      setState(() {
                        if (counterSportDress > 1) counterSportDress--;
                      });
                    },
                        () {
                      setState(() {
                        counterSportDress++;
                      });
                    },
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
          // Total Amount and Checkout Button
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Amount: \$${getTotalAmount()}',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: () {
                        // Checkout logic can be added here
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Checked Out Successfully!')),
                        );
                      },
                      child: Text('Check Out'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget to build each item in the bag
  Widget buildBagItem(
      String imagePath,
      String itemName,
      String color,
      String size,
      int counter,
      int price,
      VoidCallback onDecrement,
      VoidCallback onIncrement,
      ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image of the item
        Image.asset(
          imagePath,
          height: 100,
          width: 100,
        ),
        SizedBox(width: 16),
        // Column with item details and counter
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Item details row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        itemName,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Color: $color',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Size: $size',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(height: 16),
              // Counter and price Row
              Row(
                children: [
                  // Remove button
                  IconButton(
                    onPressed: onDecrement,
                    icon: Icon(Icons.remove),
                  ),
                  // Counter value
                  Text(
                    '$counter',
                    style: TextStyle(fontSize: 20),
                  ),
                  // Add button
                  IconButton(
                    onPressed: onIncrement,
                    icon: Icon(Icons.add),
                  ),
                  SizedBox(width: 16),
                  // Price for item
                  Text(
                    '\$${price * counter}', // Price for this item
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}


