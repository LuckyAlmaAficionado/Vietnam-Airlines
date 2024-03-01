import 'package:flutter/material.dart';
import 'package:vietnam_airlines/app/shared/theme.dart';

class custom_textfield extends StatelessWidget {
  const custom_textfield({
    super.key,
    required this.title,
    required this.hintText,
    this.controller,
  });

  final String title;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textStyle2,
          ),
          TextField(
            decoration: InputDecoration(hintText: hintText),
          )
        ],
      ),
    );
  }
}
