import 'package:flutter/material.dart';
import 'package:petcare_app/themes/themes_colors.g.dart';

class PhotoAdd extends StatelessWidget {
  final String path;

  const PhotoAdd({Key? key, required this.path }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
     Stack(
        alignment: AlignmentDirectional.topEnd,
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: ClipRRect(
               borderRadius: const BorderRadius.all(Radius.circular(50)),
               child: Image(image:AssetImage(path),width: 100,height: 100)
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             decoration: const BoxDecoration(
                 gradient: LinearGradient(
                     begin: Alignment(1,0),
                     end: Alignment(0,1),
                     colors: [
                       ThemesColors.anotherlightPrimary,
                       ThemesColors.lightPrimary,
                     ]
                 ),
                 borderRadius: const BorderRadius.all(Radius.circular(50))),
             child: Icon(Icons.add, color: Colors.white),
           ),
         ),

       ],
     );
  }
}