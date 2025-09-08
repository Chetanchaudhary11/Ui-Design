import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Choping_Screen extends StatefulWidget {
  const Choping_Screen({super.key});

  @override
  State<Choping_Screen> createState() => _Choping_ScreenState();
}

class _Choping_ScreenState extends State<Choping_Screen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        title: Row(
          children: [
           Spacer(),
            GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/images/export.svg",
                  height: 24,
                  width: 24,
                )),
            const SizedBox(width: 16.0),
            GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/images/more-square.svg",
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
                child: Image.asset("assets/images/cuttingbig.jpg"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21.0),
                    child: Container(
                      child: Text(
                        "Chopping Board from Ikea",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21.0),
                    child: Row(
                      children: [
                        Text(
                          "Brand:",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          "assets/images/Ikea_logo.jpg",
                          height: 25,
                          width: 58,
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
                            "Product Description",
                            style: TextStyle(fontSize: 19),
                          ),
                          Spacer(),
                          GestureDetector(
                              child:
                                  SvgPicture.asset("assets/images/58558.svg"))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Container(
                      child: Text(
                          "You can easily turn the chopping board and use both sides when you prepare food, because it has easy-to-grip slanted edges. You can also use the chopping board as a serving ...",
                          style: TextStyle(
                            fontSize: 17,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 97,
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
                                  Text("\$12.00",
                                      style: TextStyle(
                                          color: Colors.green,
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
            )
          ],
        ),
      ),
    );
  }
}
