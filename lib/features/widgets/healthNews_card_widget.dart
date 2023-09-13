
import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:flutter/material.dart';

import '../../core/styles/app_colors.dart';
import '../../core/styles/app_size.dart';

class HealthCard extends StatelessWidget {
  const HealthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          border: Border(
              bottom:BorderSide(color: Colors.grey.withOpacity(0.1),width: 3)
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0,top: 10),
        child: Row(
          children: [
            Container(
              height: 80,
              width:AppSize.width*0.28,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 1.0,
                        offset:const Offset(0.1, 3)
                    )

                  ],
                  color: Colors.white,
                  image:const  DecorationImage(image: NetworkImage("https://as2.ftcdn.net/v2/jpg/02/60/04/09/1000_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg"),fit: BoxFit.cover,)
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: AppSize.width*0.55,
                      child: Text("This is just a reminder when you  when you have a chance could",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:16,overflow: TextOverflow.ellipsis,fontFamily: 'Inter-Medium',fontWeight: FontWeight.w600),maxLines: 2,)),

                  const SizedBox(height: 10,),
                  SizedBox(
                      width: AppSize.width*0.5,
                      child: Text("Aug 17,2023  .  4 min read ",
                        style: AppTextStyle(size: 12, fontweight: FontWeight.w500,color: textColor2))),
                ],
                //TextStyle(color: textColor2,fontSize:12,fontFamily: 'inter'),maxLines: 2,overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
