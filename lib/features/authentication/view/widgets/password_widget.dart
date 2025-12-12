import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final bool isVisible;
  final ValueChanged<String> onChanged;
  final VoidCallback onToggle;

  const PasswordTextField({
    super.key,
    required this.isVisible,
    required this.onChanged,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !isVisible,
      decoration: InputDecoration(
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        suffixIcon: IconButton(
          icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
          onPressed: onToggle,
        ),
      ),
      onChanged: onChanged,
    );
  }
}
