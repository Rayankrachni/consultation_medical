import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:flutter/material.dart';

class FistHomeCard extends StatelessWidget {
   FistHomeCard({super.key,required this.title,required this.category, this.isAvailable=true});

  final String title;
  final String category;
  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width*0.44,
      //height:AppSize.width*0.48,
      decoration: BoxDecoration(

          color: Theme.of(context).cardColor,
          border: Border.all(
            color:isAvailable ? primary_Color:Colors.transparent
          ),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: isAvailable?const  Icon(
                Icons.verified,color: primaryColor,size: 17,
              ):const Icon(
                Icons.verified,color: Colors.transparent,size: 17,
              )
            ),
          ),
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage("https://as2.ftcdn.net/v2/jpg/02/60/04/09/1000_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg"),
          ),
          const SizedBox(height: 10,),

           Text(title,style: AppTextStyle(size: 15, fontweight:  FontWeight.w600,color:Theme.of(context).colorScheme.secondary,)),
          const SizedBox(height: 5,),
          Text(category,style: AppTextStyle(size: 11, fontweight:  FontWeight.w500,color:authSubtitleColor,)),
          const SizedBox(height: 15,),
          Container(
            width: 80,
            decoration:const  BoxDecoration(
             color: homebutolor,
              borderRadius: BorderRadius.all(Radius.circular(20)),

           ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
              child: Center(
                child: isAvailable ? Text("Available",style: AppTextStyle(size: 11, fontweight:  FontWeight.w500,color:primary_Color,),):
                Text("Busy Now",style: AppTextStyle(size: 11, fontweight:  FontWeight.w500,color:Colors.red,)),
              ),
            ),

          ),
          const SizedBox(height: 10,),


        ],
      ),
    );
  }
}

