import 'package:flutter/material.dart';

class CustomTitleTextfield extends StatefulWidget {
  final String title;
  final String hintText;

  const CustomTitleTextfield({
    super.key,
    required this.title,
    required this.hintText
  });

  @override
  State<CustomTitleTextfield> createState() => _CustomTitleTextfieldState();
}

class _CustomTitleTextfieldState extends State<CustomTitleTextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Text(widget.title, style: TextStyle(fontSize: 15))],
        ),
                          SizedBox(height: 10),
    TextFormField(
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Color(0XFF939393)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0XFFdcdcdc)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0XFF006837)),
        ),
        filled: true,
        fillColor: Color(0XFFf5f5f5),
      ),
    ),
      ],
    );
  }
}