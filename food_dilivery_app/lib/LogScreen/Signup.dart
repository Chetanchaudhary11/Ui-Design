import 'package:flutter/material.dart';
import 'package:food_dilivery_app/LogScreen/Verification.dart';
import 'package:food_dilivery_app/widgets/TextField.dart';

class SignupTab extends StatefulWidget {
  @override
  _SignupTabState createState() => _SignupTabState();
}

class _SignupTabState extends State<SignupTab> {
  final _signupFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _signupPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Form(
        key: _signupFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(
                title: 'Welcome!', subtitle: 'Sign up to your account.'),
            SizedBox(height: 20.0),
            TextFieldWidget(
              controller: _nameController,
              label: "Full Name",
              hint: "Enter your Name",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Phone Number"),
                CustomIntlPhoneField(
                  controller: _phoneController,
                  label: "Phone Number",
                  hint: "000 000 0000",
                  initialCountryCode: "IN",
                  showCountryFlag: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your phone number";
                    }
                    return null;
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            TextFieldWidget(
              controller: _signupPasswordController,
              label: "Create Password",
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
            DividerWithText(text: " hungry? let\'s continue with these"),
            SizedBox(height: 20.0),
            SocialMediaButtons(),
            SizedBox(height: 50),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_signupFormKey.currentState?.validate() ?? false) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OtpVerification()),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(232, 58),
                  backgroundColor: Color(0XFFEA985B),
                ),
                child:
                    Text('Signup', style: TextStyle(color: Color(0XFFFFFFFF))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
