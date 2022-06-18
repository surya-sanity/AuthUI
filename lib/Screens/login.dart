import 'package:auth_ui/Widgets/or_divider.dart';
import 'package:auth_ui/Widgets/sign_up_cta.dart';
import 'package:auth_ui/Widgets/sign_up_form.dart';
import 'package:auth_ui/Widgets/social_button.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Sign Up'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => {},
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SocialButton(social: Social.google),
                SizedBox(width: 20),
                SocialButton(social: Social.facebook),
              ],
            ),
            const SizedBox(height: 40),
            const OrDivider(),
            const SizedBox(height: 40),
            const SignUpForm(),
            const SizedBox(height: 50),
            const SignUpCTA()
          ]),
        ),
      ),
    );
  }
}
