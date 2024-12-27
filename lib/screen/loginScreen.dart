import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colorsWidget.dart';
import 'package:flutter_application_1/screen/createAccount.dart';
import 'package:flutter_application_1/widgets/custtom_text_field.dart';
import 'package:flutter_application_1/widgets/CustomElevatedButton.dart';
import 'package:flutter_application_1/widgets/LongIn_SignUpbotton.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getPrimeryColor(),
      appBar: AppBar(
        title: Text("Log In",
            style: TextStyle(
                color: getSecondaryColor(),
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        backgroundColor: getPrimeryColor(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  labelText: "Email",
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                  labelText: "Password",
                  icon: Icons.lock,
                  obscureText: true,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: CustomElevatedButton(
                text: "Log In",
                onPressed: () {},
                backgroundColor: getPrimeryColor(),
                borderColor: getSecondaryColor(),
                textColor: getSecondaryColor(),
              ),
            ),
            const SizedBox(height: 20),
            ReusableTextButtonRow(
              messageText: "Don't have an account? ",
              buttonText: "Sign Up",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateAccountScreen(),
                  ),
                );
              },
              textColor: getSecondaryColor(),
            ),
          ],
        ),
      ),
    );
  }
}
