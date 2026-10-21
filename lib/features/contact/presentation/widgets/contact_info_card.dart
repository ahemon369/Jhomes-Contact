import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import 'section_card.dart';
import 'social_link_tile.dart';

class ContactInfoCard extends StatelessWidget {
  const ContactInfoCard({super.key});

  void _open(BuildContext context, String name) {
    // TODO: url_launcher দিয়ে আসল লিংক খুলুন।
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Open $name')));
  }

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppAssets.worldMap,
              width: double.infinity,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => const SizedBox(height: 180)),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _InfoItem(
                    label: AppStrings.phoneLabel, value: AppStrings.phoneValue),
                SizedBox(height: 24),
                _InfoItem(
                    label: AppStrings.officeLabel,
                    value: AppStrings.officeValue),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SocialLinkTile(
            icon: Icons.chat_bubble_outline,
            label: 'WhatsApp',
            onTap: () => _open(context, 'WhatsApp'),
          ),
          const SizedBox(height: 16),
          SocialLinkTile(
            icon: Icons.close,
            label: 'Twitter',
            onTap: () => _open(context, 'Twitter'),
          ),
          const SizedBox(height: 16),
          SocialLinkTile(
            icon: Icons.camera_alt_outlined,
            label: 'Instagram',
            onTap: () => _open(context, 'Instagram'),
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: GoogleFonts.urbanist(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.textDark)),
        const SizedBox(height: 8),
        Text(value,
            style:
                GoogleFonts.urbanist(fontSize: 16, color: AppColors.textGrey)),
      ],
    );
  }
}
