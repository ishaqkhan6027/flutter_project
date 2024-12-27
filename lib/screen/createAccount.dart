import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/bNavigationbar.dart';
import 'package:flutter_application_1/screen/loginScreen.dart';
import 'package:flutter_application_1/screen/ForgetPasswordScreen.dart';
import 'package:flutter_application_1/widgets/colorsWidget.dart';
import 'package:flutter_application_1/widgets/custtom_text_field.dart';
import 'package:flutter_application_1/widgets/CustomElevatedButton.dart';
import 'package:flutter_application_1/widgets/LongIn_SignUpbotton.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Create Account",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 165, 237, 71),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "Welcome to WorldTour!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Explore the world with us. Create an account to start your journey!",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                const CustomTextField(
                  labelText: "Full Name",
                  icon: Icons.person,
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                    labelText: "Email Address", icon: Icons.email),
                const SizedBox(height: 20),
                const CustomTextField(
                  labelText: "Password",
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                  labelText: "Confirm Password",
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                CustomElevatedButton(
                    text: "Creat Account",
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => bNavigationbar()));
                    },
                    backgroundColor: getPrimeryColor(),
                    borderColor: getSecondaryColor(),
                    textColor: getSecondaryColor()),
                const SizedBox(height: 20),
                ReusableTextButtonRow(
                  messageText: "Already have an account? ",
                  buttonText: "Sign In",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  textColor: getSecondaryColor(),
                ),
                Center(
                  child: CustomElevatedButton(
                      text: "Forget Password",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPasswordScreen(),
                          ),
                        );
                      },
                      backgroundColor: getPrimeryColor(),
                      borderColor: getSecondaryColor(),
                      textColor: getSecondaryColor()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
