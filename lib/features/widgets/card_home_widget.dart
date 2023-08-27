import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
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
      height:AppSize.width*0.5,
      decoration: BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 1.0,
                offset:const Offset(0.1, 3)
            )

          ]
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
            Container(
              height: 70,
              width: 70,
              decoration:const BoxDecoration(

                  shape: BoxShape.circle,
                image: DecorationImage(image: NetworkImage("https://www.pngall.com/wp-content/uploads/2018/05/Doctor-PNG-Clipart.png"),)
              ),

            ),
            const SizedBox(height: 10,),
             Text(title,style: TextStyle(
                color: Colors.black,
                fontSize: 15,fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 5,),
            Text(category,style: TextStyle(
                color: Colors.black,
                fontSize: 11,fontWeight: FontWeight.normal
            ),),
            const SizedBox(height: 10,),
            Container(
              width: 100,
              decoration: BoxDecoration(
               color: filledColor,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 1.0,
                        offset:const Offset(0.1, 3)
                    )

                ]
             ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: isAvailable ? Text("Available",style: TextStyle(
                      color: primaryColor,
                      fontSize: 11,fontWeight: FontWeight.normal
                  ),):
                  Text("Busy now",style: TextStyle(
                      color: Colors.red,
                      fontSize: 11,fontWeight: FontWeight.normal
                  ),),
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

