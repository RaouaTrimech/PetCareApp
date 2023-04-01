import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petcare_app/themes/themes_colors.g.dart';

import '../../Utils/Button.dart';

class Start extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<Start> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 0),
                  colors: [
                    ThemesColors.anotherlightPrimary,
                    ThemesColors.lightPrimary,
                  ]
              )),
          child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  SizedBox(
                    height: 130,
                  ),
                  Image.asset("assets/landing_pages/welcome.png"
                    , fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  SolidButton(
                    lightText: "Continue as " ,
                    text : "Pet Owner" ,
                    onPressed: () {
                    /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => LogIn(),
                          ));*/ },
                      backgroundColor : ThemesColors.colorContainer ,
                      textColor : ThemesColors.lightPrimary ),
                  SizedBox(
                    height: 20,
                  ),
                  SolidButton(
                      lightText: "Continue as " ,
                      text : "Pet Sitter" ,
                      onPressed: () {
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => LogIn(),
                          ));*/ },
                      backgroundColor : ThemesColors.colorContainer ,
                      textColor : ThemesColors.lightPrimary ),
                  SizedBox(
                    height: 118,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?" , style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        height: 24 / 16,
                        letterSpacing: 1,
                        color: Colors.white
                      )  ),
                      SizedBox(
                        width: 5, // <-- SEE HERE
                      ),
                      const Text("Sign In" , style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w800,
                          height: 24 / 16,
                          letterSpacing: 1,
                          color: Colors.white
                      )  ),
                    ],
                  )
                ],
              )
        ),
      ),
    );
  }
}