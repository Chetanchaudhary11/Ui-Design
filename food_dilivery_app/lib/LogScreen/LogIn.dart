import 'package:flutter/material.dart';
import 'package:food_dilivery_app/catagory/HomePage.dart';
import 'package:food_dilivery_app/widgets/TextField.dart';

class LoginTab extends StatefulWidget {
  @override
  _LoginTabState createState() => _LoginTabState();
}

class _LoginTabState extends State<LoginTab> {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Form(
        key: _loginFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(title: 'Welcome!', subtitle: 'Login to your account.'),
            SizedBox(height: 20.0),
            TextFieldWidget(
              controller: _emailController,
              label: "Email Address",
              hint: "Enter your Email",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            TextFieldWidget(
              controller: _passwordController,
              label: "Password",
              hint: "Enter your Password",
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot password?',
                style: TextStyle(fontSize: 14.0, color: Colors.blue),
              ),
            ),
            SizedBox(height: 20.0),
            DividerWithText(
              text: "hungry? let\'s continue with these",
            ),
            SizedBox(height: 20.0),
            SocialMediaButtons(),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_loginFormKey.currentState?.validate() ?? false) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(232, 58),
                  backgroundColor: Color(0XFFEA985B),
                ),
                child:
                    Text('Login', style: TextStyle(color: Color(0XFFFFFFFF))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
