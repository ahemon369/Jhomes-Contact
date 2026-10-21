import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.lines = 1,
    this.keyboardType,
    this.validator,
  });

  final TextEditingController controller;
  final String hint;
  final int lines;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color),
      );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      minLines: lines,
      maxLines: lines,
      keyboardType: lines > 1 ? TextInputType.multiline : keyboardType,
      validator: validator,
      style: GoogleFonts.urbanist(fontSize: 14, color: AppColors.textDark),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
            GoogleFonts.urbanist(fontSize: 14, color: AppColors.textGrey),
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        enabledBorder: _border(AppColors.border),
        focusedBorder: _border(AppColors.primary),
        errorBorder: _border(AppColors.error),
        focusedErrorBorder: _border(AppColors.error),
      ),
    );
  }
}
