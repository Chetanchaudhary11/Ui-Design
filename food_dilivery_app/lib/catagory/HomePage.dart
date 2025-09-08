import 'package:flutter/material.dart';
import 'package:food_dilivery_app/Order/Order%20screen.dart';
import 'package:food_dilivery_app/Utensils/utensil.dart';
import 'package:food_dilivery_app/catagory/AllCatogry.dart';
import 'package:food_dilivery_app/widgets/bottomnavbar.dart';
import 'package:food_dilivery_app/widgets/utensi.dart'; // Import your ProductCard widget

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFFFFFFF),
        title: Text('Good Evening Luisa'),
        elevation: 0,
      ),
      backgroundColor: Color(0XFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchField(),
            SizedBox(height: 16),
            _location(),
            SizedBox(height: 16),
            _buildCategoriesHeader(),
            SizedBox(height: 16),
            _buildCategoryGrid(),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            _buildOffersSection(),
            SizedBox(height: 16),
            Divider(),
            _buildTrendingSection(),
            SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }

  Widget _buildSearchField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Food, Restaurants etc.',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[200],
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  Widget _location() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFCE2CF),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: Color(0XFFEA985B)),
                    SizedBox(width: 8.0),
                    Text(
                      '32, Kingston Ln.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFFEA985B),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 14.99),
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFCE2CF),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Row(
                  children: [
                    Icon(Icons.watch_later_outlined, color: Color(0XFFEA985B)),
                    SizedBox(width: 8.0),
                    Text(
                      'Order Now.',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFFEA985B),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Text(
        'Categories',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

 Widget _buildCategoryGrid() {
  final categories = [
    {'title': 'Burgers', 'image': 'assets/images/veggi.png'},
    {'title': 'Grocery', 'image': 'assets/images/Grocery.png'},
    {'title': 'Salads', 'image': 'assets/images/salad.png'},
    {'title': 'Sweets', 'image': 'assets/images/sweet.png'},
    {'title': 'Utensils', 'image': 'assets/images/utensil.png'},
    {'title': 'See All', 'image': 'assets/images/all.jpg'},
  ];

  List<Widget> rows = [];

  // Create rows with up to 3 items per row
  for (int i = 0; i < categories.length; i += 3) {
    // Determine the items for this row
    List<Widget> rowItems = [];
    for (int j = i; j < i + 3 && j < categories.length; j++) {
      final category = categories[j];
      rowItems.add(
        Expanded(
          child: Container(
            height: 200,
            child: ProductCard(
              imagePath: category['image']!,
              title: category['title']!,
              price: '', // Default price value, adjust if needed
              onTap: () {
                if (category['title'] == 'See All') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllCategory()),
                  );
                } else if (category['title'] == 'Burgers') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Orderscreen()),
                  );
                } else if (category['title'] == 'Utensils') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Utensil_Screen()),
                  );
                }
                // Add more conditions for other screens if needed
              },
            ),
          ),
        ),
      );
    }

    // Create a Row for this set of items
    rows.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: rowItems,
      ),
    );
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 21.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: rows,
    ),
  );
}

  Widget _buildOffersSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0),
          child: Text(
            'Offers Near you',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 181,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: Image.asset('assets/images/Big.jpg', fit: BoxFit.cover),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTrendingSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0),
          child: Text(
            'New & Trending',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.asset(
                        index == 0
                            ? 'assets/images/Big.jpg'
                            : 'assets/images/kfcbig.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Image.asset(
                          index == 0
                              ? 'assets/images/hrways.jpg'
                              : 'assets/images/k.jpg',
                          height: 20,
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              index == 0 ? 'Harvey\'s' : 'KFC',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              index == 0 ? '2.1 mi' : '1.3 mi',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
