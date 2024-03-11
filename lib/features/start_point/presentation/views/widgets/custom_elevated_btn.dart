import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.onPressed,
  });
  final String text;
  final Color backgroundColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontFamily: 'Changa', fontSize: 18),
        ),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(backgroundColor), // secondary color
        ),
      ),
    );
  }
}
