
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:flutter/material.dart';


class DisableButton extends StatelessWidget {
  const DisableButton({
    Key? key,
    required this.text,
    required this.color,
    required this.textColor,
    this.isOnboading=false,
  }) : super(key: key);

  final String text;
  final Color color;
  final Color textColor;
  final bool isOnboading;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: (){},
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
                style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color: textColor)
            ),
            const SizedBox(width: 10,),
            if(isOnboading) const Icon(Icons.arrow_forward,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}