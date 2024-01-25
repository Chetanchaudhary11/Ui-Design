import 'package:flutter/material.dart';

class New_Order extends StatefulWidget {
  const New_Order({super.key});

  @override
  State<New_Order> createState() => _New_OrderState();
}

class _New_OrderState extends State<New_Order> {
  TextEditingController sellerNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController menuController = TextEditingController();
  TextEditingController itemController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Place Order'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: sellerNameController,
              decoration: InputDecoration(labelText: 'Seller Name'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: dateController,
              decoration: InputDecoration(labelText: 'Date'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: menuController,
              decoration: InputDecoration(labelText: 'Menu'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: itemController,
              decoration: InputDecoration(labelText: 'Item'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: quantityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Quantity'),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: priceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Price'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Perform action when "Place Order" button is pressed
                _placeOrder();
              },
              child: Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }

  void _placeOrder() {
    // Retrieve values from controllers and perform actions as needed
    String sellerName = sellerNameController.text;
    String date = dateController.text;
    String menu = menuController.text;
    String item = itemController.text;
    int quantity = int.tryParse(quantityController.text) ?? 0;
    double price = double.tryParse(priceController.text) ?? 0.0;

    // You can add your logic here based on your requirements
    print('Order placed:');
    print('Seller Name: $sellerName');
    print('Date: $date');
    print('Menu: $menu');
    print('Item: $item');
    print('Quantity: $quantity');
    print('Price: $price');
  }
}
