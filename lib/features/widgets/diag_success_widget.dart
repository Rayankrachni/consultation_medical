
import 'dart:ui';
import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/screens/homePage/homeScreen.dart';
import 'package:consultation_medical/features/screens/homePage/views/appointment.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/network/locale/shared_preference.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/app_size.dart';
class SuccessDialog extends StatefulWidget {
  const SuccessDialog({super.key});

  @override
  State<SuccessDialog> createState() => _SuccessDialogState();
}

class _SuccessDialogState extends State<SuccessDialog> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return    Stack(
      children: [
        // Blurred background
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Adjust the blur intensity
            child: Container(
              color: Colors.black.withOpacity(0.4), // Adjust the opacity and color
            ),
          ),
        ),
        // Custom dialog
        Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: EdgeInsets.all(25.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  height:65,
                  width: 65,
                  decoration:const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.calendar_month,color: Colors.white,size: 28,),
                ),
                SizedBox(height: 20,),
                Text(
                  'Diag.Congratulations'.tr(),
                  style: AppTextStyle(size:20, fontweight: FontWeight.bold, color: Theme.of(context).colorScheme.onSecondary,)

                ),
                const SizedBox(height: 20,),
                Wrap(
                  children: [
                    Text(
                      'Diag.congrats-text'.tr(),
                      textAlign: TextAlign.center,
                        style: AppTextStyle(size:13, fontweight: FontWeight.w500, color: Theme.of(context).colorScheme.onSecondary,)

                    ),
                  ]
                ),
                SizedBox(height: 20,),

                SizedBox(
                  width: AppSize.width*0.45,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    push(context: context, screen: AppointmentScreen());
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

                      child:  Text( 'Button.view-app'.tr(),style:AppTextStyle(size: 14, fontweight: FontWeight.normal,color:Colors.white)))),
                SizedBox(height: 20,),
                SizedBox(
                  width: AppSize.width*0.45,
                  height: 50,
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

                      child: Text( 'Button.go-home'.tr(),style:AppTextStyle(size: 15, fontweight: FontWeight.w500,color:  Theme.of(context).colorScheme.secondary))),

                ),



              ],
            ),
          ),
        ),
      ],
    );
  }
}
