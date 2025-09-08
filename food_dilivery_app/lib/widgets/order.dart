import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_dilivery_app/Order/moreinfo.dart';
import 'package:food_dilivery_app/widgets/images.dart';

class OrderContent extends StatefulWidget {
  final TabController tabController;

  const OrderContent(
      {Key? key, required this.tabController, TabController? Controller})
      : super(key: key);

  @override
  State<OrderContent> createState() => _OrderContentState();
}

class _OrderContentState extends State<OrderContent> {
  bool isSelected = false;
  String selectedButton = "Today’s Deals";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/Product Picture.jpg"),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Row(
              children: [
                const SizedBox(width: 5),
                Container(
                  child: Image.asset("assets/images/Logo.jpg"),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "McDonald’s",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Color(0xFF292D32),
                            size: 20,
                          ),
                          const SizedBox(width: 3.0),
                          const Text(
                            "Bramlea & Sandalwood",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF292D32),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
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
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFEFF2F5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetImageClass.ratingicon,
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 7),
                        const Text(
                          "Ratings: 4.5",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF292D32),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 13),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetImageClass.dilivericon,
                          height: 18,
                          width: 18,
                        ),
                        const SizedBox(width: 7),
                        const Expanded(
                          child: Text(
                            "Delivers in 15-20 min",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF292D32),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MoreInfoScreen(),
                              ),
                            );
                          },
                          child: SvgPicture.asset(
                            AssetImageClass.moreinfoo,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 13),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/element-2.svg",
                          height: 16,
                          width: 16,
                        ),
                        const SizedBox(width: 7),
                        const Text(
                          "Burgers",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF292D32),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Container(
            color: const Color(0xFFEFF2F5),
            child: TabBar(
              isScrollable: true,
              labelStyle:
                  const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              labelColor: const Color(0xFF292D32),
              unselectedLabelColor: const Color(0xFFB3BFCB),
              controller: widget.tabController,
              tabs: const [
                Tab(text: 'Breakfast Menu'),
                Tab(text: 'Lunch & Dinner'),
                Tab(text: 'Overnight Menu'),
              ],
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildMaterialButton(context, "Today’s Deals",
                      "Today’s Deals" == selectedButton),
                  const SizedBox(width: 5),
                  _buildMaterialButton(context, "Burger Meals",
                      "Burger Meals" == selectedButton),
                  const SizedBox(width: 5),
                  _buildMaterialButton(context, "Chicken & Fish",
                      "Chicken & Fish" == selectedButton),
                ],
              ),
            ),
          ),
          const SizedBox(height: 9),
          _buildListView(),
        ],
      ),
    );
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

  Widget _buildListView() {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _buildListTile(AssetImageClass.burger12,
            "Classic Cheese Hamburger (400 Cals)", "\$5.80", "\$4.59"),
        const Divider(),
        _buildListTile("assets/images/Frame.jpg",
            "Classic Cheese Hamburger (400 Cals)", "\$4.80", "\$3.59"),
             const Divider(),
        _buildListTile(AssetImageClass.burger,
            "Veggie & Bacon Hot Sauce Sandwich ", "\$6.80", "\$5.59"),
             const Divider(),
        _buildListTile(AssetImageClass.burger12,
            "Western BBQ Cheeseburger", "\$5.80", "\$4.59"),
             const Divider(),
        _buildListTile("assets/images/Frame.jpg",
            "Bacon and Veggies Salad", "\$5.80", "\$4.59"),
      ],
    );
  }

  Widget _buildListTile(
      String imagePath, String title, String oldPrice, String newPrice) {
    return ListTile(
      leading: Image.asset(imagePath,height: 41,width: 98,),
      
      title: Text(
        title,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Text(
            oldPrice,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough,
                color: Colors.black),
          ),
          const SizedBox(width: 9),
          Text(
            newPrice,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ],
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
