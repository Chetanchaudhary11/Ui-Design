import 'package:flutter/material.dart';
import 'package:food_dilivery_app/Order/Order%20screen.dart';
import 'package:food_dilivery_app/Utensils/utensil.dart';

class AllCategory extends StatefulWidget {
  const AllCategory({super.key});

  @override
  State<AllCategory> createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = (screenWidth - 4 * 16) / 3; 
    double itemHeight = 119; // Fixed height for containers

    return SafeArea(
      child: Scaffold(
       appBar: AppBar(
        backgroundColor: Color(0XFFFFFFFF),
        title:Text("Back"),
       ),
        backgroundColor: Color(0XFFFFFFFF),
        body: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 14,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21),
              child: Text(
                "All Categories",
                style: TextStyle(
                  fontSize: screenWidth * 0.08, 
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search by Category.',
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.0),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0; i < categories.length; i += 3)
                        Padding(
                          padding: EdgeInsets.only(bottom: 19.0),
                          child: Row(
                            mainAxisAlignment: (categories.length - i <= 3)
                                ? MainAxisAlignment.spaceEvenly
                                : MainAxisAlignment.spaceBetween,
                            children: [
                              if (i < categories.length)
                                buildSingleImageContainer(
                                    categories[i], itemWidth, itemHeight),
                              if (i + 1 < categories.length)
                                buildSingleImageContainer(
                                    categories[i + 1], itemWidth, itemHeight),
                              if (i + 2 < categories.length)
                                buildSingleImageContainer(
                                    categories[i + 2], itemWidth, itemHeight),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build a container with a single image and text
  Widget buildSingleImageContainer(
      Map<String, String> category, double itemWidth, double itemHeight) {
    return GestureDetector(
      onTap: () {
        // Define your navigation logic based on category label
        if (category["label"] == "Burgers") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Orderscreen()));
        } else if (category["label"] == "Utensils") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Utensil_Screen()));
        }
        // Add more conditions for other categories if needed
      },
      child: Container(
        width: itemWidth,
        height: itemHeight, // Fixed height
        decoration: BoxDecoration(
          color: Color.fromARGB(228, 245, 242, 240), // Light background color
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    category["image"]!,
                    fit: BoxFit.contain,
                    width: itemWidth,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                category["label"]!,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const categories = [
  {"image": "assets/images/Burgers1.jpg", "label": "Burgers"},
  {"image": "assets/images/Grocery.png", "label": "Grocery"},
  {"image": "assets/images/salad.png", "label": "Salads"},
  {"image": "assets/images/sweet.png", "label": "Sweets"},
  {"image": "assets/images/utensil.png", "label": "Utensils"},
  {"image": "assets/images/indiandish.png", "label": "Indian"},
  {"image": "assets/images/pizzapic.png", "label": "Pizza"},
  {"image": "assets/images/chicken.png", "label": "Chicken"},
  {"image": "assets/images/diet.png", "label": "Diet"},
  {"image": "assets/images/chinese.png", "label": "Chinese"},
  {"image": "assets/images/burritos.png", "label": "Burritos"},
];
