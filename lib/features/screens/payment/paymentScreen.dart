import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/screens/payment/creditCardScreen.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:consultation_medical/features/widgets/payment_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/styles/app_colors.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String payment='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Payment.payment'.tr(),
        style: AppTextStyle(size: 18, fontweight: FontWeight.w600,color: Theme.of(context).colorScheme.secondary)
        )),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20,top: 15),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(

                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.12),
                          offset: Offset(0, 7),
                          blurRadius: 29,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(

                            height: 40,
                            width:40,
                            decoration:const BoxDecoration(
                                color: filledColor,
                                shape: BoxShape.circle
                            ),
                            child: Image.asset("assets/images/paypal.png",fit: BoxFit.fill,),
                          ),
                          SizedBox(
                            width: AppSize.width*0.7,
                            child: RadioListTile(
                              activeColor: primary_Color,
                              title: Text('Payment.paypal'.tr(),
                                  style: AppTextStyle(size: 16, fontweight: FontWeight.w600,color:Theme.of(context).colorScheme.secondary)),
                              value:'Payment.paypal'.tr(),
                              groupValue: payment,
                              onChanged: (value){
                                setState(() {
                                  payment = value.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20,top: 15),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(

                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.12),
                          offset: Offset(0, 7),
                          blurRadius: 29,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Container(
                              width:40.0,
                              height: 40.0,
                              decoration:const BoxDecoration(
                                shape: BoxShape.circle,
                                color: filledColor,
                              ),
                              child: Center(
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration:const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset("assets/images/mastercard.png"),
                                ),
                              ),
                            ),

                          ),
                          SizedBox(
                            width: AppSize.width*0.7,
                            child: RadioListTile(
                              activeColor: primary_Color,
                              title: Text('Payment.credit-card'.tr(),
                                  style: AppTextStyle(size: 16, fontweight: FontWeight.w600,color:Theme.of(context).colorScheme.secondary)),
                              value: 'Payment.credit-card'.tr(),
                              groupValue: payment,
                              onChanged: (value){
                                setState(() {
                                  payment = value.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20,top: 15),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(

                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.12),
                            offset: Offset(0, 7),
                            blurRadius: 29,
                            spreadRadius: 0,
                          )
                        ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Container(
                              width:40.0,
                              height: 40.0,
                              decoration:const BoxDecoration(
                                shape: BoxShape.circle,
                                color: filledColor,
                              ),
                              child: Center(
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration:const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset("assets/images/google-icon.png"),
                                ),
                              ),
                            ),

                          ),
                          SizedBox(
                            width: AppSize.width*0.7,
                            child: RadioListTile(
                              activeColor: primary_Color,
                              title: Text('Payment.google-play'.tr(),style: AppTextStyle(size: 16, fontweight: FontWeight.w600,color:Theme.of(context).colorScheme.secondary)),

                              value: 'Payment.google-play'.tr(),
                              groupValue: payment,
                              onChanged: (value){
                                setState(() {
                                  payment = value.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),



            Padding(
              padding: const EdgeInsets.only(bottom: 15.0,left: 5),
              child: SizedBox(
                  width: AppSize.width*0.9,
                  child: DefaultButton(onPressed: (){push(context: context, screen: CreditCradScreen());}, text: 'Button.next'.tr())),
            )
          ],
        ),
      )
    );
  }
}
