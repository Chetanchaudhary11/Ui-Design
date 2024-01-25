import 'package:flutter/material.dart';
import 'package:tea_diary/Screens/Bill%20HIstory.dart';
import 'package:tea_diary/Screens/Manage%20item.dart';
import 'package:tea_diary/Screens/New%20order.dart';
import 'package:tea_diary/Screens/SellerList.dart';
import 'package:tea_diary/Screens/dashboard.dart';
import 'package:tea_diary/Screens/generate%20bill.dart';
import 'package:tea_diary/Screens/splash.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => Splash_Screen(),
       '/dashboard':(context) => Dashboard_Screen(),
       '/sellerList':(context) => Seller_List(),
       '/manageitem':(context) => Manage_Menu(),
       '/neworder':(context) => New_Order(),
       '/billhistory':(context) => Bill_History(),
       '/generate bill':(context) => Generate_bill()
    },
  );
  }
}


