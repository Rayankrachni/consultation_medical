
import 'dart:ui';
import 'package:consultation_medical/core/const/strings.dart';
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
                  height:65,
                  width: 65,
                  decoration:const BoxDecoration(
                      color: primary_Color,
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.star,color: Colors.white,size: 28,),
                ),
                SizedBox(height: 20,),
                Text(
                  'Diag.review-success'.tr(),
                  style: TextStyle(
                    fontSize:20,
                    fontFamily: regularfontFamilyName,
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20,),
                Wrap(
                    children: [
                      Text(
                        'Diag.review-text'.tr(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize:12,
                          fontFamily: regularfontFamilyName,
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ]
                ),
                SizedBox(height:20,),

                SizedBox(
                  width: AppSize.width*0.5,
                  height: 40,
                  child: ElevatedButton(onPressed: (){},

                      style: ElevatedButton.styleFrom(
                        primary: primary_Color, // Set the button's background color
                        onPrimary: Colors.white,
                        elevation: 1, // Set the elevation (shadow) of the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5), // Set the border radius
                        ),
                        // Set the minimum width and height
                        // Add more properties as needed, e.g., padding, textStyle, etc.
                      ),

                      child:  Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text( 'Button.ok'.tr(),style: TextStyle(fontSize: 12,fontFamily: regularfontFamilyName),),
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
