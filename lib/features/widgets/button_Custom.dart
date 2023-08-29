
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:flutter/material.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.isOnboading=false,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final bool isOnboading;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: onPressed,
        color: primaryColor,
        minWidth: AppSize.width * 0.75,
        height: AppSize.height * 0.06,
        shape: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize:16,
                fontFamily: 'inter',
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 20,),
            if(isOnboading) const Icon(Icons.arrow_forward,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}