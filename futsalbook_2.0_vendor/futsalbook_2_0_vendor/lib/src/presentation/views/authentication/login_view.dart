import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futsalbook_2_0_vendor/src/config/router/app_router.dart';
import 'package:futsalbook_2_0_vendor/src/config/router/router_utils.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/custom_input_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Login your credentials"),
          EmailField(
              prefixIcon: const Icon(Icons.email),
              hintText: "Your email...",
              onChanged: (value) {}),
          PasswordField(
              obscurePassword: true,
              onPress: () {},
              onChanged: (value) {},
              hintText: "Password"),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 53,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {
                AppRouter.router.go(PAGES.home.screenPath);
              },
              child: const Text("Login"),
            ),
          ),
        ],
      ),
    )));
  }
}
