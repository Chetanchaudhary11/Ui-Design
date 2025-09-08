import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Corrected import for SvgPicture
import 'package:food_dilivery_app/widgets/bottomnavbar.dart';
import 'package:food_dilivery_app/widgets/images.dart'; // Ensure this import is correct

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            children: [
              const Text("Discover"),
              const Spacer(),
              const SizedBox(width: 16.0),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  AssetImageClass.search, // Ensure AssetImageClass.search is a valid path
                  height: 24,
                  width: 24,
                ),
              ),
              const SizedBox(width: 16.0),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  AssetImageClass.bag, // Ensure AssetImageClass.bag is a valid path
                  height: 24,
                  width: 24,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0XFFFFFFFF),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4, // Adjust height as needed
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  AssetImageClass.content, // Ensure AssetImageClass.content is a valid path
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 100,
                  left: 50,
                  child: Icon(Icons.location_pin, color: Colors.red),
                ),
                Positioned(
                  bottom: 100,
                  right: 50,
                  child: Icon(Icons.fastfood, color: Colors.red),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Container(
                        child: Image.asset("assets/images/Logo.jpg"), // Ensure the path is correct
                      ),
                      SizedBox(width: 14),
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
                                ? "assets/images/Fav_red.svg" // Ensure path is correct
                                : "assets/images/Fav.svg", // Ensure path is correct
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(height: 1),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.roundabout_right_outlined),
                          SizedBox(width: 5),
                          Text('200m'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Color(0XFFEA985B)),
                          Icon(Icons.star, color: Color(0XFFEA985B)),
                          Icon(Icons.star, color: Color(0XFFEA985B)),
                          Icon(Icons.star, color: Color(0XFFEA985B)),
                          Icon(Icons.star_border_outlined, color: Color(0xFF6A798A)),
                        ],
                      ),
                      Text('(1,293)'),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'OPEN',
                          style: TextStyle(color: Color(0XFF28B996)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Row containing slider
                  SizedBox(
                    height: 67,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildSliderItem(AssetImageClass.butterburger), // Ensure paths are correct
                        _buildSliderItem(AssetImageClass.chizburger),
                        _buildSliderItem(AssetImageClass.maskabun),
                        _buildSliderItem(AssetImageClass.fries),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          
        ],
        
      ),
            bottomNavigationBar: BottomNavBarWidget(),

      
    );
  }

  Widget _buildSliderItem(String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 67,
      width: 68, // Adjust width as needed
      decoration: BoxDecoration(
        color: Color(0XFFEFF2F5),
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/map.png', // Ensure the path is correct
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 100,
            left: 50,
            child: Icon(Icons.location_pin, color: Colors.red),
          ),
          Positioned(
            bottom: 100,
            right: 50,
            child: Icon(Icons.fastfood, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
