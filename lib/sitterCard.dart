import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'PetSitter.dart';

class SitterCard extends StatefulWidget {
  PetSitter petSitter;
  /*int id_Sitter;
  String fullname_Sitter;
  String email_Sitter;
  String gender_Sitter;
  int phone_Sitter;
  String adress_Sitter;
  String password_Sitter;
  String photo_Sitter;
  String about_me_Sitter;
  double pay_fee_Sitter;
  double review_Sitter ;*/
  /*SitterCard({Key? key ,
    required this.id_Sitter ,
    required this.fullname_Sitter ,
    required this.email_Sitter,
    required this.gender_Sitter,
    required this.phone_Sitter,
    required this.adress_Sitter,
    required this.password_Sitter,
    required this.photo_Sitter,
    required this.about_me_Sitter,
    required this.pay_fee_Sitter,
    required this.review_Sitter}) : super(key: key) ;*/

    SitterCard({Key? key , required this.petSitter}) : super(key: key) ;

  @override
  State<SitterCard> createState() => _SitterCardState();
}

class _SitterCardState extends State<SitterCard> {

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 200,
      child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.blue,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: SizedBox(
          width: 300,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                 ListTile(
                   horizontalTitleGap: 50,
                  ///changing the image
                  leading: ClipRRect(
                      borderRadius:BorderRadius.circular(10),
                      child: Image.asset('puppy_image.jpg')),
                  title: Text( widget.petSitter.fullname_Sitter,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Text(widget.petSitter.about_me_Sitter + '...' ,
                          maxLines: 1,
                          style:TextStyle(
                            fontSize: 10
                          )),
                      SizedBox(height: 5,),
                      RatingBarIndicator(
                                  rating: widget.petSitter.review_Sitter,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 10.0,
                                  direction: Axis.horizontal,
                                ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.wallet,
                            color: Colors.blue,
                            size: 15,
                          ),
                          SizedBox(width: 2,),
                          Text(widget.petSitter.pay_fee_Sitter.toString() + ' dt/hour',
                            style: TextStyle(
                              fontSize: 10
                            ) ,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[

                    TextButton(
                      child: const Text('Book'),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


