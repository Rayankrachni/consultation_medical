
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:flutter/material.dart';
class ServicesWidget extends StatelessWidget {
   ServicesWidget({super.key,required this.title,required this.onPressed,required this.iconData});


  final String title;
   final IconData iconData;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onPressed,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onBackground,
                shape: BoxShape.circle
              ),
              child: Icon(iconData,color: primaryColor,size: 24,),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,style: AppTextStyle(size: 12, fontweight: FontWeight.w500,color: Theme.of(context).colorScheme.secondary)),
            )
          ],
        ),
      ),
    );
  }
}
