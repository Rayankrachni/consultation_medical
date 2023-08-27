
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
class ServicesWidget extends StatelessWidget {
   ServicesWidget({super.key,required this.title});


  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration:const BoxDecoration(
              color: filledColor,
              shape: BoxShape.circle
            ),
            child: Icon(Icons.person,color: primaryColor,size: 28,),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,style: TextStyle(
                color: textColor1,
                fontSize: 14,fontWeight: FontWeight.normal
            ),),
          )
        ],
      ),
    );
  }
}
