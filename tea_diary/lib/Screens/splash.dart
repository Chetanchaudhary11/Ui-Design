import 'dart:async';

import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _SplashState();
}

class _SplashState extends State<Splash_Screen> {

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  startTimer(){
    // ignore: unused_local_variable
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }
  route(){
    Navigator.of(context).pushReplacementNamed('/dashboard');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/tea1.png"),
              SizedBox(height: 10,),
              Text("Tea Diary",style: TextStyle(fontSize: 50),)
            ],
          ),
        ),
      ),
    );
  }
}