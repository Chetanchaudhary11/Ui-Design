import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:food_dilivery_app/catagory/AllCatogry.dart';

class OtpVerificationBody extends StatelessWidget {
  final TextEditingController otpController;
  final String code;
  final bool isCodeFilled;
  final Function(String) updateCode;
  final VoidCallback verifyOtp;

  const OtpVerificationBody({
    required this.otpController,
    required this.code,
    required this.isCodeFilled,
    required this.updateCode,
    required this.verifyOtp,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Verify Phone Number',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'We have sent you a 6-digit code.\nPlease enter it here to verify your number.',
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    controller: otpController,
                    decoration: InputDecoration(
                      fillColor: Color(0xFF6A798A),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: '+90 169 916 9564',
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: updateCode,
                    obscureText: false,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      // Implement edit functionality if needed
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0XFFFCE2CF),
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.edit,
                          color: Color(0XFFEA985B),
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            OtpTextField(
              numberOfFields: 6,
              borderColor: Color(0XFF676767),
              showFieldAsBox: true,
              fillColor: Color(0XFFEFF2F5),
              borderRadius: BorderRadius.circular(14),
              fieldHeight: 58,
              onSubmit: (String verificationCode) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn\'t Receive Code?',
                  style: TextStyle(color: Color(0XFF6A798A)),
                ),
                TextButton(
                  onPressed: () {
                    // Implement functionality to request a new OTP
                  },
                  child: Text(
                    "Get a New one",
                    style: TextStyle(color: Color(0XFFF4739E)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Color.fromARGB(255, 241, 199, 134),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllCategory()),
                  );
                },
                child: Text(
                  'Verify',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
