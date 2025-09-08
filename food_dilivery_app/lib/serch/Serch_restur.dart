import 'package:flutter/material.dart';

class serch_screen extends StatefulWidget {
  @override
  _serch_screenState createState() => _serch_screenState();
}

class _serch_screenState extends State<serch_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0), // Set horizontal padding to 21
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.0),
              Text('Search McDonald\'s',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),

             Row(
              children: [
                 Icon(Icons.location_on_outlined),
              Text(
                'Bramlea & Sandalwood',
                style: TextStyle(fontSize: 16.0),
              ),
              ],
             ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
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
              SizedBox(height: 16.0),
              Text(
                'Popular Keywords',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              SizedBox(
                height: 50.0, // Adjust the height as needed
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 120.0, // Set fixed width for each button
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text('Big Mac'),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      SizedBox(
                        width: 120.0,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text('Large Fries'),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      SizedBox(
                        width: 120.0,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text('Hash Browns'),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      SizedBox(
                        width: 120.0,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text('Happy Meal'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Featured Items',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              SizedBox(
                height: 200.0, // Adjust height as needed
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0), // Add spacing between images
                        child: Image.asset('assets/images/Big.jpg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Image.asset('assets/images/Big.jpg'),
                      ),
                      // Add more images here if needed
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
