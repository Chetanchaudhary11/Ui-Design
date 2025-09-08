import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_dilivery_app/widgets/images.dart'; 
class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Handle navigation or other logic here if needed
      // navigateToScreens(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Width of each item, assuming five items in the BottomNavigationBar

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.black, // Color for the selected item
          // ignore: deprecated_member_use
          unselectedItemColor: Colors.black.withOpacity(0.6), // Color for unselected items
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color.fromRGBO(239, 242, 245, 1),
              icon: SvgPicture.asset(
                AssetImageClass.homeicon,
                height: 24,
                width: 24,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetImageClass.discover,
                height: 24,
                width: 24,
              ),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetImageClass.car,
                height: 24,
                width: 24,
              ),
              label: 'Drivethru',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetImageClass.menu,
                height: 24,
                width: 24,
              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
                size: 30,
              ),
              label: 'Profile',
            ),
          ],
        ),
        // Positioned(
        //   bottom: 8, // Position the dot at the bottom of the stack
        //   left: _selectedIndex / 42.5, // Adjust 20 based on your design needs
        //   child: Container(
        //     height: 5,
        //     width: 5,
        //     decoration: BoxDecoration(
        //       color: Colors.black,
        //       borderRadius: BorderRadius.circular(2),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
