import 'package:flutter/material.dart';

class Manage_Menu extends StatefulWidget {
  const Manage_Menu({super.key});

  @override
  State<Manage_Menu> createState() => __Manage_MenuStateState();
}

class __Manage_MenuStateState extends State<Manage_Menu> {

  List<String> menuItems = ['Tea ', 'Coffe', 'Chees','butter Milk','Lassi','Gheee'];
  TextEditingController _newItemController = TextEditingController();

  void _addNewItem() {
    // Get the new item from the text field
    String newItem = _newItemController.text;

    // Add the new item to the menuItems list
    setState(() {
      menuItems.add(newItem);
    });

    // Clear the text field
    _newItemController.clear();
  }

  void _saveMenu() {
    // For now, just print the menu items
    print('Save: $menuItems');
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( //  Menu Manage ..............................
        backgroundColor: Colors.brown,
        title: Text('Menu Management'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 233, 202, 191),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(menuItems[index],style: TextStyle(color: Colors.black,fontSize: 20),),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [   // new item for menu..........................
                  TextField(
                    controller: _newItemController,
                    decoration: InputDecoration(labelText: 'New Menu Item'),style: TextStyle(color: Colors.black,fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(//  add new item.......................
                    onPressed: _addNewItem,
                    child: Text('Add New Item',style: TextStyle(color: Colors.red),),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _saveMenu,
                    child: Text('Save Menu',style: TextStyle(color: Colors.red),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}