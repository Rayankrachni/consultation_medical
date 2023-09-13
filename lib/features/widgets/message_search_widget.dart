
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:flutter/material.dart';

import '../../core/styles/app_colors.dart';
import '../../core/styles/app_size.dart';
class MessageCardWidget extends StatelessWidget {
  const MessageCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          border: Border(
              bottom:BorderSide(color: Colors.grey.withOpacity(0.2),width: 2)
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0,top: 10),
        child: Row(
          children: [
            const CircleAvatar(
                radius: 25,
                backgroundImage:
                NetworkImage("https://as2.ftcdn.net/v2/jpg/02/60/04/09/1000_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg")
            )
            ,
            Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: AppSize.width*0.75,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dr. Elizabeth Augus",style:AppTextStyle(size: 15, fontweight: FontWeight.w600,color: Theme.of(context).colorScheme.secondary,),),
                            const SizedBox(height: 5,),
                            SizedBox(
                                width: AppSize.width*0.5,
                                child:const  Text("this is just a reminder when you have a chance could you please gives me",
                                  style: TextStyle(color: textColor2,fontSize:14,fontFamily: "inter"),maxLines: 1,overflow: TextOverflow.ellipsis,)),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13.0),
                          child: Text("10Day ago",style:AppTextStyle(size: 12, fontweight: FontWeight.normal,color: textColor2),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
             ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
