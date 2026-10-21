import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import 'app_text_field.dart';
import 'section_card.dart';

class ContactFormCard extends StatefulWidget {
  const ContactFormCard({super.key});

  @override
  State<ContactFormCard> createState() => _ContactFormCardState();
}

class _ContactFormCardState extends State<ContactFormCard> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _message = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _phone.dispose();
    _message.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    // TODO: এখানে API call যোগ করুন।
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text(AppStrings.submitSuccess)));
    _formKey.currentState!.reset();
    for (final c in [_name, _email, _phone, _message]) {
      c.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.getInTouch,
                style: GoogleFonts.urbanist(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textDark)),
            const SizedBox(height: 24),
            AppTextField(
              controller: _name,
              hint: AppStrings.name,
              validator: (v) => (v == null || v.trim().isEmpty)
                  ? AppStrings.nameRequired
                  : null,
            ),
            const SizedBox(height: 16),
            AppTextField(
              controller: _email,
              hint: AppStrings.email,
              keyboardType: TextInputType.emailAddress,
              validator: (v) => (v == null || !v.contains('@'))
                  ? AppStrings.emailInvalid
                  : null,
            ),
            const SizedBox(height: 16),
            AppTextField(
              controller: _phone,
              hint: AppStrings.phone,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 16),
            AppTextField(
                controller: _message, hint: AppStrings.message, lines: 5),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  textStyle: GoogleFonts.urbanist(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                child: const Text(AppStrings.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
