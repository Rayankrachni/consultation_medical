
import 'dart:ui';
import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/network/locale/shared_preference.dart';
import '../../core/styles/app_colors.dart';
import '../../core/styles/app_size.dart';
class WrongDialog extends StatefulWidget {
  const WrongDialog({super.key});

  @override
  State<WrongDialog> createState() => _WrongDialogState();
}

class _WrongDialogState extends State<WrongDialog> with TickerProviderStateMixin {
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
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  height: 65,
                  width: 65,
                  decoration:const BoxDecoration(
                      color: errorColor,
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.calendar_month,color: Colors.white,size: 28,),
                ),
                SizedBox(height: 20,),
                Text(
                  'Diag.Oops'.tr(),
                  style: AppTextStyle(size:20, fontweight: FontWeight.bold, color: errorColor,)

                ),
                const SizedBox(height: 20,),
                Wrap(
                    children: [
                      Text(
                        'Diag.congrats-text'.tr(),
                        textAlign: TextAlign.center,
                        style: AppTextStyle(size:12, fontweight: FontWeight.w500, color: Theme.of(context).colorScheme.onSecondary,)

                      ),
                    ]
                ),
                SizedBox(height: 20,),

                SizedBox(
                  width: AppSize.width*0.45,
                  height: 50,
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

                      child:  Text( 'Button.try-again'.tr(),style:AppTextStyle(size: 15, fontweight: FontWeight.normal,color:Colors.white))),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: AppSize.width*0.45,
                  height: 50,
                  child: ElevatedButton(onPressed: (){},

                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).cardColor, // Set the button's background color
                        onPrimary: Theme.of(context).colorScheme.secondary,
                        elevation: 1,

                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: primary_Color),
                          borderRadius: BorderRadius.circular(5), // Set the border radius
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
