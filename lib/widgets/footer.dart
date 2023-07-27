import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/themes/color.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Align(
        alignment: Alignment.center,
        child: registerButton(context),
      ),
    );
  }

  Widget registerButton(context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: width * 0.8,
        height: 40,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [gredientStartColor, gredientEndColor],
          ),
        ),
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          child: const Text(
            'Kostenlos Registrieren',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            debugPrint('Hello!');
          },
        ),
      ),
    );
  }
}
