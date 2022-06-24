import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Spacer(),
        Spacer(),
        Expanded(
          child: Divider(
            height: 1,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: EdgeInsets.sy`mmetric(horizontal: 10.0),
          child: Text('or', style: TextStyle(fontSize: 13)),
        ),
        Expanded(
          child: Divider(
            height: 1,
            color: Colors.white,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
