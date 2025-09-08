import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_dilivery_app/Order/Order%20screen.dart';

class MoreInfoScreen extends StatefulWidget {
  const MoreInfoScreen({super.key});

  @override
  State<MoreInfoScreen> createState() => _MoreInfoScreenState();
}

class _MoreInfoScreenState extends State<MoreInfoScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Orderscreen());
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
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Row(
                children: [
                  Text(
                    "More Info",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Image.asset("assets/images/bigmap.jpg"),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Container(
                height: 62,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 22),
                    SvgPicture.asset(
                      "assets/images/routing-2.svg",
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 7),
                    Text(
                      "Get Directions",
                      style: TextStyle(
                        color: Color(0XFF292D32),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 10),
                    Spacer(),
                    Text(
                      "1.3 mi",
                      style: TextStyle(
                        color: Color(0XFF3294BD),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 23),
            // Make this part scrollable
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.location_on_outlined,
                        color: Color(0XFF292D32),
                      ),
                      title: Text(
                        "10565 Bramlea Road, Brampton, ON L6R 3P4",
                        style: TextStyle(
                          color: Color(0XFF292D32),
                          fontSize: 17,
                        ),
                      ),
                      trailing: SvgPicture.asset("assets/images/copy.svg"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.watch_later,
                        color: Color(0XFF292D32),
                      ),
                      title: Text(
                        "Open until 12:59 AM",
                        style: TextStyle(
                          color: Color(0XFF292D32),
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.star,
                        color: Color(0XFF292D32),
                      ),
                      title: Text(
                        "Rated 4.5",
                        style: TextStyle(
                          color: Color(0XFF292D32),
                          fontSize: 17,
                        ),
                      ),
                      subtitle: Text(
                        "(1,491 Ratings)",
                        style: TextStyle(
                          color: Color(0XFFB3BFCB),
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(
                        Icons.star,
                        color: Color(0XFF292D32),
                      ),
                      title: Text(
                        "Rated 4.5",
                        style: TextStyle(
                          color: Color(0XFF292D32),
                          fontSize: 17,
                        ),
                      ),
                      subtitle: Text(
                        "(1,491 Ratings)",
                        style: TextStyle(
                          color: Color(0XFFB3BFCB),
                          fontSize: 13,
                        ),
                      ),
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
}
