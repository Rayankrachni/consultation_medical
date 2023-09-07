import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/widgets/diag_review_success-widget.dart';
import 'package:consultation_medical/features/widgets/diag_wrong_widget.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/app_navigator.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/styles/app_txt_style.dart';
import '../../widgets/button_Custom.dart';
import '../../widgets/diag_success_widget.dart';

class CreditCradScreen extends StatelessWidget {
  CreditCradScreen({super.key});
  TextEditingController cardNameController=TextEditingController();

  TextEditingController cardNumberController=TextEditingController();
  TextEditingController cvveController=TextEditingController();

  TextEditingController expiryDateController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: Text('Payment.payment'.tr(),
              style: AppTextStyle(size: 18, fontweight: FontWeight.w600,color: Theme.of(context).colorScheme.secondary)
          )),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Text('Payment.card-name'.tr(),style: AppTextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    size: 12, fontweight: FontWeight.w600,)),
                ),
                TextFormField(
                  controller: cardNameController,

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Toast.empty-field'.tr();
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,

                  style: TextStyle(color: Theme.of(context).colorScheme.secondary,),


                  decoration: InputDecoration(
                    hintText:'Payment.card-name'.tr(),

                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 20.0,
                    ),


                    enabledBorder: OutlineInputBorder(
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

                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 10),
                  child: Text('Payment.card-number'.tr(),style: AppTextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  size: 12, fontweight: FontWeight.w600,)),
                ),
                TextFormField(
                  controller: cardNameController,

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Toast.empty-field'.tr();
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,

                  style: TextStyle(color: Theme.of(context).colorScheme.secondary,),


                  decoration: InputDecoration(
                    hintText:'Payment.card-number'.tr(),

                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 20.0,
                    ),


                    enabledBorder: OutlineInputBorder(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                          child: Text('Payment.date-expiry'.tr(),style: AppTextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            size: 12, fontweight: FontWeight.w600,)),
                        ),
                        SizedBox(
                          width: AppSize.width*0.4,
                          child: TextFormField(
                            controller: cardNameController,

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Toast.empty-field'.tr();
                              }
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,

                            style: TextStyle(color: Theme.of(context).colorScheme.secondary,),


                            decoration: InputDecoration(
                              hintText:'Payment.date-expiry'.tr(),

                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 20.0,
                              ),


                              enabledBorder: OutlineInputBorder(
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
                        ),

                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,bottom: 10),
                          child: Text('Payment.cvv'.tr(),style: AppTextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          size: 12, fontweight: FontWeight.w600,)),
                        ),
                        SizedBox(
                          width: AppSize.width*0.4,
                          child: TextFormField(
                            controller: cardNameController,

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Toast.empty-field'.tr();
                              }
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,

                            style: TextStyle(color: Theme.of(context).colorScheme.secondary,),


                            decoration: InputDecoration(
                              hintText:'Payment.cvv'.tr(),

                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                                horizontal: 20.0,
                              ),


                              enabledBorder: OutlineInputBorder(
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
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: DefaultButton(onPressed: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return SuccessDialog();

                      //WrongDialog();

                     //
                  },
                );
               },
                  text: "${'Button.pay'.tr()} \$40"),
            )
           //CustomTextFormField(controller: controller, hintText: hintText, prefixIcon: prefixIcon, textInputType: textInputType)
          ],
        ),
      ),
    );
  }
}
