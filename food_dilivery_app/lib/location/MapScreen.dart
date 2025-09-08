import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_dilivery_app/catagory/AllCatogry.dart';

class Mapscreen extends StatefulWidget {
  const Mapscreen({super.key});

  @override
  State<Mapscreen> createState() => _MapscreenState();
}

class _MapscreenState extends State<Mapscreen> {
  bool isSelected = false;
  String selectedButton = "Leave at Doorstep";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AllCategory());
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
              height: MediaQuery.of(context).size.height * 0.90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 54,
                      ),
                      Text(
                        "Edit Address",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      SizedBox(
                        height: 220,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Stack(
                            clipBehavior: Clip.antiAlias,
                            fit: StackFit.passthrough,
                            children: <Widget>[
                              Container(
                                height: 193,
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset(
                                  "assets/images/Map.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ), //Container
                              Positioned(
                                top: 52,
                                left: 173,
                                right: 129,
                                
                                child: SvgPicture.asset(
                                  "assets/images/home_Icon_map.svg",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                              Stack(children: [
                                Positioned(
                                    top: 169,
                                    left: 77,
                                    right: 77,
                                    child: Container(
                                      height: 48,
                                      width: MediaQuery.of(context).size.width *
                                          0.25,
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                            backgroundColor: Color(0XFFFFFFFF),
                                            fixedSize: Size(194, 48),
                                            side: BorderSide()),
                                        child: Text("Pin Location",
                                            style: TextStyle(
                                                color: Color(0XFF000000))),
                                      ),
                                    )),
                              ]),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Apt / Suite / Floor',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Type Something Here',
                          prefixIcon: const Icon(Icons.search),
                          fillColor: Colors.grey[200],
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Business / Building Name',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Type Something Here',
                          prefixIcon: const Icon(Icons.search),
                          fillColor: Colors.grey[200],
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Divider(),
                      SizedBox(height: 20),
                      Text('Delivery details',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 21),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _buildMaterialButton(context, "Leave at Doorstep",
                                  "Leave at Doorstep" == selectedButton),
                              const SizedBox(width: 10),
                              _buildMaterialButton(context, "In-Person Handoff",
                                  "In-Person Handoff" == selectedButton),
                              const SizedBox(width: 10),
                              _buildMaterialButton(
                                  context,
                                  "Meet Outside House",
                                  "Meet Outside House" == selectedButton),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 18),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 21.0),
                        child: Container(
                          height: 59,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18)),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Color(0XFF28B996))),
                            onPressed: () {},
                            child: Text(
                              "Save",
                              style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ));
  }

  Widget _buildMaterialButton(
      BuildContext context, String text, bool isSelected) {
    return MaterialButton(
      onPressed: () {
        setState(() {
          selectedButton = text;
        });
      },
      color: isSelected ? Color(0XFF46505D) : const Color(0xFFEFF2F5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: isSelected ? Colors.white : const Color(0XFF2D3943),
        ),
      ),
    );
  }

}
