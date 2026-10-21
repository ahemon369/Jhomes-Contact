import 'package:flutter/material.dart';

import 'core/constants/app_strings.dart';
import 'core/theme/app_theme.dart';
import 'features/contact/presentation/screens/contact_screen.dart';

class JHomesApp extends StatelessWidget {
  const JHomesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const ContactScreen(),
    );
  }
}
