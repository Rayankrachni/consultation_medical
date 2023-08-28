
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class CustomOtpTextFormField extends StatelessWidget {
  const CustomOtpTextFormField({
    super.key,
    required this.controller,
    this.onTapSuffix,
  });

  final TextEditingController controller;
  final Function()? onTapSuffix;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.width*0.12,
      child: TextFormField(
        controller: controller,

        validator: (value) {
          if (value!.isEmpty) {
            return 'Toast.empty-field'.tr();
          }
          return null;
        },
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,

        style:const TextStyle(color: Colors.black),
        obscureText: false,
        decoration:const InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 20.0,
          ),

          enabledBorder:const OutlineInputBorder(
            borderRadius:BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 1,
              color: placeHolderColor,
            ),
          ),
          focusedErrorBorder:const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide:  BorderSide(
              width: 1,
              color: Colors.red,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 1,
              color: primaryColor,
            ),
          ),
          errorBorder:const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10),),
            borderSide:  BorderSide(
              width: 1,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}