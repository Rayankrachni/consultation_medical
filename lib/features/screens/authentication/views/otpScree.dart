import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:consultation_medical/features/widgets/otpTextField_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../widgets/textField_custom.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);
  TextEditingController name=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('Otp.Otp-title'.tr(),style: Theme.of(context).textTheme.headline1,),
              SizedBox(height: 10,),
              Text("${'Otp.Otp-subtitle1'.tr()}(*****g@gmail.com) ${'Otp.Otp-subtitle2'.tr()}",style: Theme.of(context).textTheme.headline3,),
              SizedBox(height: 20,),
              Center(
                child: SizedBox(
                  width: AppSize.width*0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOtpTextFormField(controller: name),
                      CustomOtpTextFormField(controller: name),
                      CustomOtpTextFormField(controller: name),
                      CustomOtpTextFormField(controller: name)
                    ],
                  ),
                ),

              ),
              const SizedBox(height: 20,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Otp.resendCode'.tr(),style:TextStyle(color: primaryColor2)),
                    Text("00:23 ",style:TextStyle(color:Theme.of(context).colorScheme.secondary,)),
                  ],
                ),
              ),

              const SizedBox(height: 40,),

              DefaultButton(onPressed: (){}, text: 'Otp.verify'.tr())




            ],
          ),
        ),
      ),
    );
  }
}
