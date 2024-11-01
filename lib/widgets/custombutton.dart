import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  const custombutton({
    super.key,
    required this.text,
    this.height = 50,
    required this.onPressed,
  });
  final String text;
  final double height;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffeb1555),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
       text,
             style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
