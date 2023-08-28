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
            const CircleAvatar(
              radius: 30,
              backgroundImage:  NetworkImage("https://www.pngall.com/wp-content/uploads/2018/05/Doctor-PNG-Clipart.png")
            )
            ,
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

                     Padding(
                       padding: const EdgeInsets.all(5.0),
                       child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Reminder your serial",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.w500),),
                              SizedBox(height: 5,),
                              Text("+9000000999", style: TextStyle(color: textColor2,fontSize:12),maxLines: 1,overflow: TextOverflow.ellipsis,),

                            ],
                          ),
                     ),
                        !isInvited? SizedBox(
                          width: AppSize.width*0.2,
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
                              onPressed: (){}, child: Text("invite",style: TextStyle(fontSize: 12),)),
                        ): SizedBox(
                          width: AppSize.width*0.25,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: disablebuttonColor, // Set the button's background color
                                onPrimary: Colors.white, // Set the text color
                                elevation: 0, // Set the elevation (shadow) of the button
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5), // Set the border radius
                                ),
                                // Set the minimum width and height
                                // Add more properties as needed, e.g., padding, textStyle, etc.
                              ),
                              onPressed: (){}, child: Text("invited",style: TextStyle(fontSize: 12),)),
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
