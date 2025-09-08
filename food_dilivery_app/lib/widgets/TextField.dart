import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

// All Text Feild....
class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  TextFieldWidget({
    required this.controller,
    required this.label,
    required this.hint,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 5),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hint,
            contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
            filled: true,
            fillColor: Colors.grey[200],
            suffixIcon: controller.text.isNotEmpty
                ? IconButton(
                    icon: Icon(Icons.cancel),
                    onPressed: () {
                      controller.clear();
                    },
                  )
                : null,
          ),
          validator: validator,
        ),
      ],
    );
  }
}

// PhoneNumber Fild...
class CustomIntlPhoneField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final bool obscureText;
  final TextInputType keyboardType;
  final String initialCountryCode;
  final bool showCountryFlag;
  final String? Function(String?)? validator;

  CustomIntlPhoneField(
      {required this.controller,
      required this.label,
      required this.hint,
      this.obscureText = false,
      this.keyboardType = TextInputType.phone,
      required this.initialCountryCode,
      required this.showCountryFlag,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hint,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
        filled: true,
        fillColor: Colors.grey[200],
        suffixIcon: controller.text.isNotEmpty
            ? IconButton(
                icon: Icon(Icons.cancel),
                onPressed: () {
                  controller.clear();
                },
              )
            : null,
      ),
      initialCountryCode: initialCountryCode,
      showCountryFlag: showCountryFlag,
      onChanged: (phone) {},
    );
  }
}

// Image Social Media ....
class SocialMediaButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSocialMediaButton("assets/images/Google.jpg"),
        _buildSocialMediaButton("assets/images/Apple.jpg"),
        _buildSocialMediaButton("assets/images/Facebook.jpg"),
      ],
    );
  }

  Widget _buildSocialMediaButton(String imagePath) {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0XFFD5DEE7),
          width: 0.5,
        ),
      ),
      child: InkWell(
        onTap: () {},
        child: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
        ),
      ),
    );
  }
}

// Header and title ....
class HeaderWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  HeaderWidget({
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: 10.0),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}

// Divider.....
class DividerWithText extends StatelessWidget {
  final String text;

  DividerWithText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
