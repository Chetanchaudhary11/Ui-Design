// ignore_for_file: unused_element

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.filter_list),
                    color: Colors.orange[100],
                    iconSize: 44,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search Food, Restaurants etc.',
                  prefixIcon: const Icon(Icons.search),
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Recently Searched',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: Text('CLEAR ALL'),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    SingleChildScrollView(
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/Burger.jpg",
                          width: 142.02,
                          height: 100 ,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          'BBQ Chicken Burger',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                        subtitle: Row(
                          children: [
                            Image.asset(
                              "assets/images/k.jpg",
                              width: 20.64,
                              height: 21,
                            ),
                            SizedBox(width: 5),
                            Text('KFC'),
                          ],
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                    ),
                    _buildSearchItem(
                      title: 'KFC',
                      subtitle: '10565 Bramalea Road, Brampton, ON',
                      imagePath: 'assets/images/k.jpg',
                    ),
                    _buildSearchItem(
                      title: 'McDonald\'s',
                      subtitle: '18815 Queens Road, Brampton, ON',
                      imagePath: 'assets/images/m.jpg',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchItem({
    required String title,
    required String subtitle,
    required String imagePath,
  }) {
    return ListTile(
      leading: Image.asset(imagePath),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
