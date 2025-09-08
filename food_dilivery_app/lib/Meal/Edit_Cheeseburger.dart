import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_dilivery_app/widgets/images.dart';

class EditCheeseburger extends StatefulWidget {
  const EditCheeseburger({super.key});

  @override
  State<EditCheeseburger> createState() => _EditCheeseburgerState();
}

class _EditCheeseburgerState extends State<EditCheeseburger> {
  bool isSelected = false;

  final Map<String, int> _quantities = {
    "Sesame Seed Bun": 1,
    "BBQ Sauce": 1,
    "Beef Patty": 1,
    "Cheese": 1,
    "Banana Peppers": 1,
    "Lettuce": 1,
    "Chipotle Sauce": 1,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Edit Cheeseburger",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0XFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 81,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFEFF2F5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Edit Cheeseburger",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF46505D),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Required",
                      style: TextStyle(
                        color: Color(0XFF28B996),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: _quantities.keys.map((ingredient) {
                return Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        _getIngredientImage(ingredient),
                        height: 33,
                        width: 43,
                      ),
                      title: Text(
                        ingredient,
                        style: TextStyle(fontSize: 17),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset(AssetImageClass.minus,height: 32,width: 32,), ////icon change 
                            onPressed: () {
                              setState(() {
                                if (_quantities[ingredient]! > 0) {
                                  _quantities[ingredient] = _quantities[ingredient]! - 1;
                                }
                              });
                            },
                          ),
                          Text(
                            '${_quantities[ingredient]}',
                            style: TextStyle(fontSize: 17),
                          ),
                          IconButton(
                            icon: SvgPicture.asset(AssetImageClass.plus,height: 32,width: 32,),//  icon change 
                            onPressed: () {
                              setState(() {
                                _quantities[ingredient] = _quantities[ingredient]! + 1;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                );
              }).toList(),
            ),
            
            SizedBox(height: 61),
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
                              Text("\$8.69",
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
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: SvgPicture.asset(
                              isSelected
                                  ? "assets/images/Fav.svg"
                                  : "assets/images/Fav_red.svg",
                              fit: BoxFit.contain,
                            ),
                          ))
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  // Method to get image path for each cheeseburger ingredient
  String _getIngredientImage(String ingredient) {
    switch (ingredient) {
      case "Sesame Seed Bun":
        return AssetImageClass.sesame;
      case "BBQ Sauce":
        return AssetImageClass.sauce;
      case "Beef Patty":
        return AssetImageClass.beef;
      case "Cheese":
        return AssetImageClass.chease;
      case "Banana Peppers":
        return AssetImageClass.banana;
      case "Lettuce":
        return AssetImageClass.lettuce;
      case "Chipotle Sauce":
        return AssetImageClass.chipotle;
      default:
        return '';
    }
  }
}
