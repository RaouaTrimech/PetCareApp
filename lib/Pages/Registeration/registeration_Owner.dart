import 'package:flutter/material.dart';

import '../../Utils/Photo_Add.dart';

class registOwner extends StatefulWidget {
  @override
  _registOwnerState createState() => _registOwnerState();
}

class _registOwnerState extends State<registOwner> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Image.asset("assets/Registeration/Background.png",
                  fit: BoxFit.fill),
              Container(
                margin: EdgeInsets.only(top: 55.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Registration",
                            style : TextStyle(
                              fontSize: 34,
                              decoration: TextDecoration.none,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              height: 34 / 34,
                              letterSpacing: 0,
                              color: Colors.white
                            ))
                      ]
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 25.0, right: 25.0, top: 50.0),
                          padding: const EdgeInsets.all(15.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(Radius.circular(25)),),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                  ),
                                  child : TextField(
                                    style: const TextStyle(fontSize: 14,
                                        decoration: TextDecoration.none,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        height: 24 / 16,
                                        letterSpacing: 1),
                                    decoration: const InputDecoration(
                                      labelText: 'Full Name',
                                    ),
                                    onChanged: (text) {
                                      print('The user entered: $text');
                                    },
                                  )),
                              Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                  ),
                                  child : TextField(
                                    style: const TextStyle(fontSize: 14,
                                        decoration: TextDecoration.none,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        height: 24 / 16,
                                        letterSpacing: 1),
                                    decoration: const InputDecoration(
                                      labelText: 'Email',
                                    ),
                                    onChanged: (text) {
                                      print('The user entered: $text');
                                    },
                                  )),
                              Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                  ),
                                  child : TextField(
                                    style: const TextStyle(fontSize: 14,
                                        decoration: TextDecoration.none,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w400,
                                        height: 24 / 16,
                                        letterSpacing: 1),
                                    decoration: const InputDecoration(
                                      labelText: 'Password',
                                    ),
                                    onChanged: (text) {
                                      print('The user entered: $text');
                                    },
                                  )),
                            ],
                          ),
                        ),
                        PhotoAdd(path : "assets/user/Circle.png"),

                      ],
                    )

                  ],
                ),

              ),
            ]
        )
    );
  }
}