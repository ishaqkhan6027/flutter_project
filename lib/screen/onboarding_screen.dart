import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/bNavigationbar.dart';
import 'package:flutter_application_1/screen/createAccount.dart';
import 'package:flutter_application_1/screen/home_screen.dart';
import 'package:flutter_application_1/screen/loginScreen.dart';
import 'package:flutter_application_1/widgets/onboarding_view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: const [
                OnboardingView(
                    image: './assets/images/introimage3.png',
                    title: 'Book Unique Home and Experience',
                    subTitle:
                        "Since 2014, we've helped more than 500,000 people of all ages enjoy the best outdoor experience of their lives."),
                OnboardingView(
                    image: './assets/images/introimage2.png',
                    title: 'Book Unique Home and Experience',
                    subTitle:
                        "We believe that traveling around the world shouldn’t be hard."),
                OnboardingView(
                    image: './assets/images/introimage1.png',
                    title: 'Book Unique Home and Experience',
                    subTitle:
                        "Find your favorite vacation for your story around the globe and make your trip meaningful."),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                          color: index == _currentPage
                              ? const Color.fromARGB(255, 165, 237, 71)
                              : Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                    ));
              }),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 165, 237, 71)),
              onPressed: () {
                if (_currentPage < 2) {
                  _pageController.animateToPage(
                    _currentPage + 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateAccountScreen()));
                }
              },
              child: SizedBox(
                width: _currentPage == 2 ? 120 : 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _currentPage == 2 ? 'Get Started' : 'Next',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
              )),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
