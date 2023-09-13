import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        border: Border(
          bottom:BorderSide(color: filledColor)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0,top: 10),
        child: Row(
          children: [
            Container(
              height: 55,
              width: 55,
              decoration:const BoxDecoration(
                  color: filledColor,
                  shape: BoxShape.circle
              ),
              child: Icon(Icons.notifications_none,color: primaryColor,size: 28,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: AppSize.width*0.75,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Reminder your serial",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.w700,fontFamily: 'inter'),),
                        const Padding(
                          padding:  EdgeInsets.all(2.0),
                          child: Text("10m ago",style: TextStyle(color: textColor2,fontSize:12,fontFamily: 'inter'),),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  SizedBox(
                      width: AppSize.width*0.6,
                      child:const Text("This is just a reminder reminder when you have a chance could you please gives me",
                        style: TextStyle(color: textColor2,fontSize:12,fontFamily: "inter"),maxLines: 2,overflow: TextOverflow.ellipsis,)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
