
import 'dart:ui';
import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/screens/homePage/homeScreen.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/network/locale/shared_preference.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/app_size.dart';
class SuccessReviewDialog extends StatefulWidget {
  const SuccessReviewDialog({super.key});

  @override
  State<SuccessReviewDialog> createState() => _SuccessReviewDialogState();
}

class _SuccessReviewDialogState extends State<SuccessReviewDialog> with TickerProviderStateMixin {
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
              color: Colors.black.withOpacity(0.5), // Adjust the opacity and color
            ),
          ),
        ),
        // Custom dialog
        Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(
            padding: EdgeInsets.all(25.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  height:AppSize.height*0.1,
                  width: AppSize.height*0.1,
                  decoration:const BoxDecoration(
                      color: primary_Color,
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.star_rounded,color: Colors.white,size: 40,),
                ),
                SizedBox(height: 20,),
                Text(
                  'Diag.review-success'.tr(),
                    style: AppTextStyle(size: 18, fontweight: FontWeight.bold,color: Theme.of(context).colorScheme.secondary)

                ),
                const SizedBox(height: 20,),
                Wrap(
                    children: [
                      Text(
                        'Diag.review-text'.tr(),
                        textAlign: TextAlign.center,
                        style: AppTextStyle(size: 14, fontweight: FontWeight.normal,color: Theme.of(context).colorScheme.secondary)
                      ),
                    ]
                ),
                SizedBox(height:20,),

                SizedBox(
                  width: AppSize.width*0.5,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    pushAndRemove(context: context, screen: HomePage());
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

                      child:  Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text( 'Button.ok'.tr(),style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color: Colors.white),),
                      )),
                ),




              ],
            ),
          ),
        ),
      ],
    );
  }
}
