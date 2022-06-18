import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Social { facebook, google }

class SocialButton extends StatelessWidget {
  final Social social;
  const SocialButton({
    Key? key,
    this.social = Social.facebook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.white,
          width: 0.3,
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            social == Social.facebook
                ? 'assets/images/fb.svg'
                : 'assets/images/google.svg',
            height: 20,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          social == Social.facebook
              ? const Text('Use Facebook',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500))
              : const Text('Use Google',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
