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
      height:AppSize.width*0.48,
      decoration: BoxDecoration(

          color: Theme.of(context).cardColor,
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
      child: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: isAvailable? Icon(
                  Icons.verified,color: primaryColor,size: 17,
                ):Icon(
                  Icons.verified,color: Colors.transparent,size: 17,
                )
              ),
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://www.pngall.com/wp-content/uploads/2018/05/Doctor-PNG-Clipart.png"),
            ),
            const SizedBox(height: 10,),

             Text(title,style: AppTextStyle(size: 15, fontweight:  FontWeight.w600,color:Theme.of(context).colorScheme.secondary,)),

            Text(category,style: AppTextStyle(size: 11, fontweight:  FontWeight.w500,color:authSubtitleColor,)),
            const SizedBox(height: 15,),
            Container(
              width: 100,
              decoration:const  BoxDecoration(
               color: homebutolor,
                borderRadius: BorderRadius.all(Radius.circular(10)),

             ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: isAvailable ? Text("Available",style: AppTextStyle(size: 11, fontweight:  FontWeight.w500,color:primary_Color,),):
                  Text("Busy now",style: AppTextStyle(size: 11, fontweight:  FontWeight.w500,color:Colors.red,)),
                ),
              ),

            ),
            const SizedBox(height: 10,),


          ],
        ),
      ),
    );
  }
}

