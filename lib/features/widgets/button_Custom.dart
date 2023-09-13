
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:flutter/material.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.isOnboading=false,
    this.color=primaryColor,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color color;
  final bool isOnboading;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: onPressed,
        color: color,
        minWidth: AppSize.width * 0.75,
        height: AppSize.height * 0.07,
        shape: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color: Colors.white)
            ),
            const SizedBox(width: 10,),
            if(isOnboading) const Icon(Icons.arrow_forward,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}