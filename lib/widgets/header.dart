import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/themes/styles.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                // style: menuButtonStyle,
                child: Text(
                  "Login",
                  style: segmentUnselectedStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
