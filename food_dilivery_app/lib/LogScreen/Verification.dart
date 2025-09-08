import 'package:flutter/material.dart';
import 'package:food_dilivery_app/catagory/HomePage.dart';
import 'package:food_dilivery_app/widgets/otp.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final TextEditingController _otpController = TextEditingController();
  String _code = '';
  bool _isCodeFilled = false;

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  void _updateCode(String value) {
    setState(() {
      _code = value;
      _isCodeFilled = _code.length == 6;
    });
  }

  void _verifyOtp() {
    if (_isCodeFilled) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a 6-digit OTP')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OtpVerificationBody(
          otpController: _otpController,
          code: _code,
          isCodeFilled: _isCodeFilled,
          updateCode: _updateCode,
          verifyOtp: _verifyOtp,
        ),
      ),
    );
  }
}
