import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_dilivery_app/Meal/juicelist.dart';
import 'package:food_dilivery_app/Order/Order%20screen.dart';
import 'package:food_dilivery_app/widgets/images.dart';

class MealCollapsed extends StatefulWidget {
  const MealCollapsed({super.key});

  @override
  State<MealCollapsed> createState() => _MealCollapsedState();
}

class _MealCollapsedState extends State<MealCollapsed> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFFFFFFFF),
          title: Row(
            children: [
              const Icon(Icons.arrow_back),
              SizedBox(
                width: 3,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Orderscreen()));
                  },
                  child: const Text("Back")),
              const Spacer(),
              GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AssetImageClass.moresquare,
                    height: 24,
                    width: 24,
                  )),
              const SizedBox(width: 16.0),
              GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AssetImageClass.bag,
                    height: 24,
                    width: 24,
                  )),
              const SizedBox(width: 16.0),
            ],
          ),
        ),
        backgroundColor: Color(0XFFFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: Container(
                  child: Image.asset("assets/images/meal_collap.jpg"),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Western BBQ Cheeseburger Meal",
                            style: const TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 10,
                      right: 0,
                      child: Container(
                        
                        child: Row(
                          children: [
                            Text(
                              "340-400 Cals",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.info_outline,
                              size: 18,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFEFF2F5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Side Item",
                        style:
                            TextStyle(fontSize: 17, color: Color(0XFF46505D)),
                      ),
                      Spacer(),
                      Text("Required",
                          style: TextStyle(
                              color: Color(0XFF28B996),
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                          child: SvgPicture.asset(
                        AssetImageClass.add,
                        height: 28,
                        width: 28,
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFEFF2F5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Drinks",
                        style:
                            TextStyle(fontSize: 17, color: Color(0XFF46505D)),
                      ),
                      Spacer(),
                      Text("Required",
                          style: TextStyle(
                              color: Color(0XFF28B996),
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Juice_Screen()));
                        },
                          child: SvgPicture.asset(
                        AssetImageClass.add,
                        height: 28,
                        width: 28,
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFEFF2F5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Edit Cheeseburger",
                        style:
                            TextStyle(fontSize: 17, color: Color(0XFF46505D)),
                      ),
                      Spacer(),
                      Text("Optional",
                          style: TextStyle(
                              color: Color(0XFFF5A94F),
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected = !isSelected;
                            });
                          },
                          child: Container(
                            height: 62,
                            width: 62,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SvgPicture.asset(
                              isSelected
                                  ? "assets/images/Minus.svg"
                                  : "assets/images/add.svg",
                              fit: BoxFit.contain,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 91,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 62,
                          // width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(18),
                              color: const Color(0xFF292D32)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 22,
                              ),
                              SvgPicture.asset(
                                "assets/images/bag-happy.svg",
                                height: 21,
                                width: 21,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                "Add to Bag",
                                style: TextStyle(
                                    color: Color(0XFFFFFFFF),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Spacer(),
                              Text("\$6.69",
                                  style: TextStyle(
                                      color: Color(0XFF28B996),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Spacer(),
                      SizedBox(
                        width: 18,
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected = !isSelected;
                            });
                          },
                          child: Container(
                            height: 62,
                            width: 62,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SvgPicture.asset(
                              isSelected
                                  ? "assets/images/Fav_red.svg"
                                  : "assets/images/Fav.svg",
                              fit: BoxFit.contain,
                            ),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
