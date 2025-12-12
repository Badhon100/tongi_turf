import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;

  const CommonTextField({
    super.key,
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onChanged: onChanged,
    );
  }
}
