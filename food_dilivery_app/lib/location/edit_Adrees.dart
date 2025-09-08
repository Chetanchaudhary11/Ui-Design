import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_dilivery_app/location/MapScreen.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
   @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Mapscreen());
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.75,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 54),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 54,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 21.0),
                      child: Text(
                        "Edit Address",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Look for an Address.',
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
                          padding: const EdgeInsets.symmetric(horizontal: 21.0),
                          child: Row(
                            children: [
                              Text(
                                'Saved Locations',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Column(
                          children: [
                            ListTile(
                              leading: SvgPicture.asset(
                                "assets/images/home.svg",
                                height: 24,
                                width: 24,
                              ),
                              title: Text(
                                  "34, George Avenue, Brampton, ON L6T 8H6"),
                            ),
                            Divider(),
                            ListTile(
                              leading: SvgPicture.asset(
                                "assets/images/building.svg",
                                height: 24,
                                width: 24,
                              ),
                              title: Text("31244, King Street, Toronto, ON",
                                  style: TextStyle(fontSize: 17)),
                            ),
                            Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 21.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Recents",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "CLEAR ALL",
                                        style: TextStyle(
                                            color: Colors.red[200],
                                            fontSize: 12),
                                      ))
                                ],
                              ),
                            ),
                            ListTile(
                              leading: SvgPicture.asset(
                                "assets/images/location.svg",
                                height: 28,
                                width: 28,
                              ),
                              title: Text(
                                "56, George Avenue, Brampton, ON",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            Divider(),
                            SizedBox(height: 198),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 21.0),
                              child: Container(
                                height: 58,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18)),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                          Color(0XFF28B996))),
                                  onPressed: () {},
                                  child: Text(
                                    "Use Current Location",
                                    style: TextStyle(
                                        color: Color(0XFFFFFFFF),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )),
    );
  }
}

