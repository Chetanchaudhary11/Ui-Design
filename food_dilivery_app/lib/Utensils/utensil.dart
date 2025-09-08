// lib/screens/utensil_screen.dart

import 'package:flutter/material.dart';
import 'package:food_dilivery_app/Utensils/choping.dart';
import 'package:food_dilivery_app/widgets/bottomnavbar.dart';
import 'package:food_dilivery_app/widgets/utensi.dart';

class Utensil_Screen extends StatefulWidget {
  const Utensil_Screen({super.key});

  @override
  State<Utensil_Screen> createState() => _Utensil_ScreenState();
}

class _Utensil_ScreenState extends State<Utensil_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFFFFFFF),
       
      ),
      backgroundColor: Color(0XFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 21,
                ),
                Stack(children: [
                  Text(
                    "Utensils   ",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  Positioned(
                    left: 129,
                    child: Text("NEW",
                        style: TextStyle(
                            color: Color(0XFFF5814F),
                            fontSize: 13,
                            fontWeight: FontWeight.bold)),
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Search Utensils",
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductCard(
                          imagePath: 'assets/images/tubone.jpg',
                          title: 'Le Creuset Dark\n Blue 500ml Cup',
                          price: '\$30.59',
                          onTap: () {}),
                      SizedBox(
                        width: 15,
                      ),
                      ProductCard(
                        imagePath: 'assets/images/gloves.jpg',
                        title: 'Tefal White \nPotholder',
                        price: '\$33.90',
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductCard(
                        imagePath: 'assets/images/pan.jpg',
                        title: 'Le Creuset Dark\n Blue 500ml Cup',
                        price: '\$51.90',
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Choping_Screen()));
                        },
                        child: ProductCard(
                          imagePath: 'assets/images/cutting.jpg',
                          title: 'Tefal White \nPotholder',
                          price: '\$12.00',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Choping_Screen()));
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductCard(
                        imagePath: 'assets/images/tubone.jpg',
                        title: 'Le Creuset Dark\n Blue 500ml Cup',
                        price: '\$30.59',
                        onTap: () {}
                            
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      ProductCard(
                        imagePath: 'assets/images/gloves.jpg',
                        title: 'Tefal White \nPotholder',
                        price: '\$33.90',
                        onTap: (){},
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
