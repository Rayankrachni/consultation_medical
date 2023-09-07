
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText = false,
    this.hide = false,
    this.lines=1,
    this.iconColor=primaryColor,
    this.suffixIcon,
    this.onTapSuffix,
    required this.textInputType,
  });

  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final bool hide;
  final int lines;
  final Color iconColor;
  final IconData? suffixIcon;
  final Function()? onTapSuffix;
  final TextInputType textInputType;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {

  bool show_password=true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        if(!widget.hide) Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Text(widget.hintText,style: Theme.of(context).textTheme.headline2 ),
        ),

        TextFormField(
          controller: widget.controller,

          validator: (value) {
            if (value!.isEmpty) {
              return 'Toast.empty-field'.tr();
            }
            return null;
          },
          keyboardType: widget.textInputType,
          textInputAction: TextInputAction.next,

          style: TextStyle(color: Theme.of(context).colorScheme.secondary,),
          obscureText: show_password,
          maxLines: widget.lines,
          decoration: InputDecoration(
            hintText: widget.hintText,

            contentPadding: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 20.0,
            ),
            prefixIcon: Icon(
              widget.prefixIcon,
              size: 20,
            ),
             suffixIcon:widget.obscureText? IconButton(
              onPressed: (){
                setState(() {
                  show_password=!show_password;
                });
              },
              icon: Icon(show_password? Icons.visibility_off: Icons.visibility,size: 20,)
            ): null,

            suffix: widget.suffixIcon != null
                ? InkWell(
              onTap: widget.onTapSuffix,
              child: Icon(
                widget.suffixIcon,
                color: primaryColor,
                size: 20,
              ),
            )
                : null,
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
                color: placeHolderColor,
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
      ],
    );
  }
}