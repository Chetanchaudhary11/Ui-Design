import 'package:flutter/material.dart';
import 'package:food_dilivery_app/LogScreen/LogIn.dart';
import 'package:food_dilivery_app/LogScreen/Signup.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 17),
            labelColor: Color(0xFF292D32),
            unselectedLabelColor: Color(0xFFB3BFCB),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Color(0xFF292D32),
            indicatorWeight: 3,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 16.0),
            tabs: [
              Tab(text: "Login"),
              Tab(text: "Signup"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LoginTab(),
            SignupTab(),
          ],
        ),
      ),
    );
  }
}
