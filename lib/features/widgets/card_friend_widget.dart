import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:flutter/material.dart';

import '../../core/styles/app_colors.dart';
import '../../core/styles/app_size.dart';

class FriendCardWidgets extends StatelessWidget {
  FriendCardWidgets({super.key});
  bool isInvited=false;
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
             CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              backgroundImage:  NetworkImage("https://media.istockphoto.com/id/1309328823/fr/photo/verticale-headshot-de-lemploy%C3%A9-masculin-de-sourire-dans-le-bureau.jpg?b=1&s=612x612&w=0&k=20&c=Y8DpRjL_WZSVmV9LEMAJgogYMGMkqQsvcZ2Nb5LBmrk=")
            )
            ,
            Padding(
              padding: const EdgeInsets.only(left: 8.0,bottom: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: AppSize.width*0.75,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                     Padding(
                       padding: const EdgeInsets.all(5.0),
                       child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Friend's FullName ",
                                style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.w700,fontFamily: "inter"),),
                              SizedBox(height: 10,),
                              Text("+9000000999", style: TextStyle(color: textColor2,fontSize:12,fontFamily: "inter"),maxLines: 1,overflow: TextOverflow.ellipsis,),

                            ],
                          ),
                     ),
                        !isInvited? SizedBox(
                          width: AppSize.width*0.22,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: primary_Color, // Set the button's background color
                                onPrimary: Colors.white, // Set the text color
                                elevation: 3, // Set the elevation (shadow) of the button
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5), // Set the border radius
                                ),
                                // Set the minimum width and height
                                // Add more properties as needed, e.g., padding, textStyle, etc.
                              ),
                              onPressed: (){}, child: Text("invite",style: AppTextStyle(size: 14, fontweight: FontWeight.normal,color: Colors.white),)),
                        ): SizedBox(
                          width: AppSize.width*0.25,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: disablebuttonColor2, // Set the button's background color
                                onPrimary: Colors.white, // Set the text color
                                elevation: 0, // Set the elevation (shadow) of the button
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5), // Set the border radius
                                ),
                                // Set the minimum width and height
                                // Add more properties as needed, e.g., padding, textStyle, etc.
                              ),
                              onPressed: (){}, child: Text("invited",style: AppTextStyle(size: 14, fontweight: FontWeight.normal,color: Colors.white),)),
                        )
                      ],
                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
