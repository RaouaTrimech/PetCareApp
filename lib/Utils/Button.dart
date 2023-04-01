import 'package:flutter/material.dart';
import 'package:petcare_app/themes/themes_colors.g.dart';
import 'package:petcare_app/themes/themes_text_styles.g.dart';


class SolidButton extends StatelessWidget {
  final String text;
  String? lightText;
  Color? backgroundColor = ThemesColors.lightPrimary;
  Color? textColor = ThemesColors.colorContainer ;
  final onPressed ;


   SolidButton({Key? key, this.lightText , required this.text , Color? this.backgroundColor , Color? this.textColor , required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 260.0,
        height: 46.0,
        child:   ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding : EdgeInsets.all(13),
            textStyle: ThemesTextStyles.button,
            backgroundColor: backgroundColor ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          onPressed: onPressed  ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Text( lightText ?? "" , style: TextStyle( fontSize: 16,
                  decoration: TextDecoration.none,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1, color: textColor),),
              Text(text , style: TextStyle(color: textColor),),
            ],
          ),
        ),
      );
  }
}
