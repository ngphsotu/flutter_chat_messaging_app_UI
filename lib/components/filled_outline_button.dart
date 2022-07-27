import '../constants.dart';
import 'package:flutter/material.dart';

class FillOutlineButton extends StatelessWidget {
  final bool isFilled;
  final VoidCallback press;
  final String text;

  const FillOutlineButton({
    Key? key,
    this.isFilled = true,
    required this.press,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: isFilled ? Colors.white : Colors.transparent,
      onPressed: press,
      elevation: isFilled ? 2 : 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color: Colors.white),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isFilled ? kContentColorLightTheme : Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
