import 'package:flutter/material.dart';

class SignUpCTA extends StatefulWidget {
  const SignUpCTA({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpCTA> createState() => _SignUpCTAState();
}

class _SignUpCTAState extends State<SignUpCTA> {
  var isLoading = false;

  Future handleSignUp() {
    SnackBar snackBar = SnackBar(
      content: Row(children: const [
        Icon(Icons.check),
        SizedBox(width: 10),
        Text(
          'Sign Up Success.',
          style: TextStyle(color: Colors.white, fontSize: 13),
        )
      ]),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.blue,
    );
    setState(() {
      isLoading = true;
    });
    return Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: handleSignUp,
          child: isLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.0,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              : const Text(
                  'Sign Up with Email',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Text(
            'By signing up with us, you agree to our Terms of Service & Privacy Policy',
            style: TextStyle(fontSize: 11, color: Colors.grey, height: 1.4),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 130),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(
            height: 1,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20),
        RichText(
            text: const TextSpan(children: [
          TextSpan(
            text: 'Already have an account? ',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
          TextSpan(
            text: 'Sign In',
            style: TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          )
        ]))
      ],
    );
  }
}
