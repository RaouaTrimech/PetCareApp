import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petcare_app/themes/themes_colors.g.dart';
import 'package:petcare_app/themes/themes_text_styles.g.dart';

import '../../Utils/Button.dart';
import 'Items.dart';
import 'Start.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<Welcome> {

  double currentPage = 0.0;
  final _pageViewController = new PageController();

  @override
  void initState() {
    super.initState();
    _pageViewController.addListener(() {
      setState(() {
        currentPage = _pageViewController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> slides = items
        .map((item) => Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0, -1),
                end: Alignment(0, 0),
                colors: [
                  Color.fromRGBO(249, 248, 253, 1),
                  Color.fromRGBO(255, 255, 255, 1),
                ]
            )),
        padding: EdgeInsets.only(top: 80),
        child: Column(
          children: <Widget>[
            Flexible(
              child: Image.asset(item['image']),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top :30.0, bottom: 15),
                      child: Center(
                        child: Text(item['header'],
                            textAlign: TextAlign.center,
                            style: ThemesTextStyles.h2Headline),
                      ),
                    ),
                    Text(
                      item['description'],
                      style: ThemesTextStyles.body1,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: (item["id"] == "3") ?
                        SolidButton(text : "get started", onPressed : () {Navigator.push(context, MaterialPageRoute(
                              fullscreenDialog: true, builder: (context) => Start()));} ) :
                        SolidButton(text : "next", onPressed : () {})
                      )
                  ],
                ),
              ),
            )
          ],
        )))
        .toList();

    List<Widget> indicator() => List<Widget>.generate(
        slides.length,
            (index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 3.0),
          height: 10.0,
          width: currentPage.round() == index ? 20.0 : 10.0,
          decoration: BoxDecoration(
              color: currentPage.round() == index
                  ? ThemesColors.lightSecondary
                  : ThemesColors.lightSecondary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10.0)),
        ));

    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            PageView.builder(
              controller: _pageViewController,
              itemCount: slides.length,
              itemBuilder: (BuildContext context, int index) {
                return slides[index];
              },
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 30.0),
                  padding: EdgeInsets.symmetric(vertical: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicator(),
                  ),
                )
              //  ),
            )
            // )
          ],
        ),
      ),
    );
  }
}