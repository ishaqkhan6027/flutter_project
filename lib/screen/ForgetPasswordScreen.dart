import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/createAccount.dart';
import 'package:flutter_application_1/widgets/colorsWidget.dart';
import 'package:flutter_application_1/widgets/custtom_text_field.dart';
import 'package:flutter_application_1/widgets/CustomElevatedButton.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getPrimeryColor(),
      appBar: AppBar(
        title: Text(
          "Forgot Password",
          style: TextStyle(
              color: getSecondaryColor(),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: getPrimeryColor(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Enter your email to reset your password",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: getSecondaryColor()),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const CustomTextField(labelText: "Email", icon: Icons.email),
            const SizedBox(height: 30),
            CustomElevatedButton(
                text: "Send Reset Link",
                onPressed: () {},
                backgroundColor: getPrimeryColor(),
                borderColor: getSecondaryColor(),
                textColor: getSecondaryColor()),
            const SizedBox(height: 20),
            CustomElevatedButton(
                text: "Bact to Login",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateAccountScreen(),
                    ),
                  );
                },
                backgroundColor: getPrimeryColor(),
                borderColor: getSecondaryColor(),
                textColor: getSecondaryColor()),
          ],
        ),
      ),
    );
  }
}
