import 'package:flutter/material.dart';
import 'package:food_dilivery_app/widgets/images.dart';

class Juice_Screen extends StatefulWidget {
  const Juice_Screen({super.key});

  @override
  State<Juice_Screen> createState() => _Juice_ScreenState();
}

class _Juice_ScreenState extends State<Juice_Screen> {
  String selectedJuice = ""; // This variable keeps track of the selected juice

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Western BBQ ... Meal",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0XFFFFFFFF),
      body: SingleChildScrollView( // Add SingleChildScrollView here
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
                            "Drinks",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF46505D),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Edit Juice",
                            style: TextStyle(
                              fontSize: 16,
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
              shrinkWrap: true, // Add shrinkWrap to true
              physics: NeverScrollableScrollPhysics(), // Prevent ListView from scrolling independently
              children: [
                ListTile(
                  leading: Image.asset(
                    AssetImageClass.punchjuice,
                    height: 33,
                    width: 43,
                  ),
                  title: Text(
                    "Fruit Punch Juice",
                    style: TextStyle(fontSize: 17),
                  ),
                  trailing: Radio<String>(
                    value: "Fruit Punch Juice",
                    groupValue: selectedJuice,
                    onChanged: (value) {
                      setState(() {
                        selectedJuice = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    AssetImageClass.orangejuice,
                    height: 33,
                    width: 43,
                  ),
                  title: Text(
                    "Orange Juice",
                    style: TextStyle(fontSize: 17),
                  ),
                  trailing: Radio<String>(
                    value: "Orange Juice",
                    groupValue: selectedJuice,
                    onChanged: (value) {
                      setState(() {
                        selectedJuice = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    AssetImageClass.gingerjuice,
                    height: 33,
                    width: 43,
                  ),
                  title: Text(
                    "Ginger Shot Juice",
                    style: TextStyle(fontSize: 17),
                  ),
                  trailing: Radio<String>(
                    value: "Ginger Shot Juice",
                    groupValue: selectedJuice,
                    onChanged: (value) {
                      setState(() {
                        selectedJuice = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    AssetImageClass.swetghuvajuice,
                    height: 33,
                    width: 43,
                  ),
                  title: Text(
                    "Sweet Guava Juice",
                    style: TextStyle(fontSize: 17),
                  ),
                  trailing: Radio<String>(
                    value: "Sweet Guava Juice",
                    groupValue: selectedJuice,
                    onChanged: (value) {
                      setState(() {
                        selectedJuice = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Image.asset(
                    AssetImageClass.tomatojuice,
                    height: 33,
                    width: 43,
                  ),
                  title: Text(
                    "Tangy Tomato Juice",
                    style: TextStyle(fontSize: 17),
                  ),
                  trailing: Radio<String>(
                    value: "Tangy Tomato Juice",
                    groupValue: selectedJuice,
                    onChanged: (value) {
                      setState(() {
                        selectedJuice = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 202),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: GestureDetector(
                onTap: () {
                  // Add your action when the button is pressed
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(18),
                          color: const Color(0xFF292D32),
                        ),
                        child: Center(
                          child: Text(
                            "Add to Bag",
                            style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 87),
          ],
        ),
      ),
    );
  }
}
