import 'package:flutter/material.dart';
import 'package:tongi_turf/core/theme/app_colors.dart';
import 'package:tongi_turf/core/widgets/custom_widgets.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator; // optional validator
  final TextInputType keyboardType;
  final String label;

  const CommonTextField({
    super.key,
    required this.controller,
    required this.label,
    this.validator,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            label: t14b600_textPrimary(label,),
            border: UnderlineInputBorder(), // no outline
            fillColor: AppColors.background,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryLight, width: 2),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.darkBg),
            ),

          ),
          controller: controller,
          validator: validator,
        ),
        if (validator != null) const SizedBox(height: 4), // space for error
      ],
    );
  }
}
