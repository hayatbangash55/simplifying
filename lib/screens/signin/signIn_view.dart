import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:simplifying/screens/checkin/checkIn_view.dart';
import 'package:simplifying/widgets/custom_buttons.dart';
import 'package:simplifying/widgets/custom_textfields.dart';
import 'package:simplifying/widgets/scrolable_column.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollableColumn(
        textBaseline: TextBaseline.alphabetic,
        textDirection: TextDirection.rtl,
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: Get.height * 0.4,
              width: double.infinity,
              color: const Color(0xff5956E9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/images/app_logo_white.png'),
                    width: 250,
                    height: 60,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          //color: Color(0xff070337),
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
            child: Column(
              children: [
                Column(
                  children: [
                    emailTextField(),
                    passwordTextField(),
                  ],
                ),
                signInButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget emailTextField() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: CustomTextField20(
        prefixIcon: FontAwesomeIcons.solidEnvelope,
        prefixIconSize: 15,
        title: 'Username or Email',
      ),
    );
  }

  Widget passwordTextField() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: CustomTextField20(
        prefixIcon: FontAwesomeIcons.lock,
        prefixIconSize: 15,
        obscureText: true,
        title: 'Password',
      ),
    );
  }

  Widget signInButton() {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: CustomButton21(
        onPressed: () {
          Get.to(()=>const CheckInView());
        },
        text: 'Sign in',
        buttonColor: const Color(0xff5956E9),
      ),
    );
  }
}
