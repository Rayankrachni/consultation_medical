import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/screens/homePage/homeScreen.dart';
import 'package:consultation_medical/features/screens/reviews/writeReviewScreen.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class CallEndedScreen extends StatefulWidget {
  const CallEndedScreen({super.key});

  @override
  State<CallEndedScreen> createState() => _CallEndedScreenState();
}

class _CallEndedScreenState extends State<CallEndedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20,bottom: 20),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: AppSize.height*0.6,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Call Ended",style:AppTextStyle(size: 14, fontweight: FontWeight.w500,color:Theme.of(context).colorScheme.secondary)),
                     SizedBox(height: 10,),
                    Text("55:00 Minutes",style:AppTextStyle(size: 14, fontweight: FontWeight.w500,color:primaryColor2)),
                    SizedBox(height: AppSize.height*0.051,),
                    const CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),

                    ),
                    SizedBox(height: AppSize.height*0.1,),
                    Text("The consultation session has ended",style:AppTextStyle(size: 16, fontweight: FontWeight.bold,color:Theme.of(context).colorScheme.secondary)),
                    SizedBox(height: 10,),
                    Text("Recording have been save in activity",style:AppTextStyle(size: 14, fontweight: FontWeight.w500,color:Theme.of(context).colorScheme.secondary)),

                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: AppSize.width,
                  height: 60,
                  child: ElevatedButton(onPressed: (){
                    push(context: context, screen: WriteReview());
                  },

                      style: ElevatedButton.styleFrom(
                        primary: primary_Color, // Set the button's background color
                        onPrimary: Colors.white,
                        elevation: 1, // Set the elevation (shadow) of the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Set the border radius
                        ),
                        // Set the minimum width and height
                        // Add more properties as needed, e.g., padding, textStyle, etc.
                      ),

                      child:  Text( 'Leave Review'.tr(),style:AppTextStyle(size: 15, fontweight: FontWeight.normal,color:Colors.white))),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: AppSize.width,
                  height: 60,
                  child: ElevatedButton(onPressed: (){

                    pushAndRemove(context: context, screen: HomePage());
                  },

                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).cardColor, // Set the button's background color
                        onPrimary: Theme.of(context).colorScheme.secondary,
                        elevation: 1,

                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: primary_Color),
                          borderRadius: BorderRadius.circular(10), // Set the border radius
                        ),
                        // Set the minimum width and height
                        // Add more properties as needed, e.g., padding, textStyle, etc.
                      ),

                      child: Text( 'Back To Home'.tr(),style:AppTextStyle(size: 15, fontweight: FontWeight.w500,color:  Theme.of(context).colorScheme.secondary))),

                ),
              ],
            )
          ],
        ),
      ) ,
    );
  }
}
