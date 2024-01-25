import 'package:flutter/material.dart';

class Seller_List extends StatefulWidget {
  const Seller_List({Key? key});

  @override
  State<Seller_List> createState() => _Seller_ListState();
}

class _Seller_ListState extends State<Seller_List> {
  List<Map<String, String>> sellers = [
    {'name': 'Seller 1', 'mobile': '1234567890', 'address': 'Address 1'},
    {'name': 'Seller 2', 'mobile': '7096996808', 'address': 'Address 2'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Seller List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: sellers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(sellers[index]['name']!),
                  subtitle: Text(sellers[index]['mobile']!),
                  // Add more details or actions here if needed
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showAddSellerDialog(context);
            },
            child: Text('Add Seller'),
          ),
        ],
      ),
    );
  }

  Future<void> _showAddSellerDialog(BuildContext context) async {
    TextEditingController nameController = TextEditingController();
    TextEditingController mobileController = TextEditingController();
    TextEditingController addressController = TextEditingController();

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Seller'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: mobileController,
                decoration: InputDecoration(labelText: 'Mobile'),
              ),
              TextField(
                controller: addressController,
                decoration: InputDecoration(labelText: 'Address'),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sellers.add({
                    'name': nameController.text,
                    'mobile': mobileController.text,
                    'address': addressController.text,
                  });
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
