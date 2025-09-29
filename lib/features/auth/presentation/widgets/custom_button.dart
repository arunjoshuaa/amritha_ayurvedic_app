import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const CustomButton({
required this.buttonText,
required this.onPressed,
    super.key,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF006837),foregroundColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10))), child: Text(widget.buttonText),
      ),
    );
  }
}