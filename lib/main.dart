import 'package:flutter/material.dart';
import 'package:petcare_app/themes/themes_theme.g.dart';

import 'Pages/Landing/Welcome.dart';
import 'Pages/Registeration/registeration_Owner.dart';
import 'Utils/Button.dart';
import 'package:petcare_app/themes/themes_colors.g.dart';
import 'package:petcare_app/themes/themes_text_styles.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemesTheme.themeDataLight,
      home: registOwner(),
    );
  }
}
