import 'package:flutter/material.dart' ;
import 'package:petcare_app/themes/themes_colors.g.dart';
import 'package:petcare_app/themes/themes_text_styles.g.dart';

class ThemesTheme {
 static const TextTheme textTheme = TextTheme(
   displayLarge: ThemesTextStyles.h1Headline,
   displayMedium: ThemesTextStyles.h2Headline,
   displaySmall: ThemesTextStyles.h3Headline,
   titleLarge: ThemesTextStyles.h4Headline,
   titleMedium: ThemesTextStyles.h5Headline,
   titleSmall: ThemesTextStyles.h6Headline,
   bodyLarge: ThemesTextStyles.body1,
   bodyMedium: ThemesTextStyles.body2,
   bodySmall: ThemesTextStyles.caption,
   labelLarge : ThemesTextStyles.button,
   labelSmall: ThemesTextStyles.overline
 );
 static const ColorScheme light = ColorScheme.light(
   primary: ThemesColors.lightPrimary,
   secondary: ThemesColors.lightSecondary,
   onSecondary: ThemesColors.iconColorPalePink,
   onPrimary: ThemesColors.lightOnPrimaryContainer ,
   onPrimaryContainer: ThemesColors.lightOnPrimaryContainer,
   background: ThemesColors.lightPrimaryContainer,
   onError: ThemesColors.errorColor
 );

 static ThemeData themeDataLight = ThemeData(
     textTheme: textTheme ,
     colorScheme: light);
}