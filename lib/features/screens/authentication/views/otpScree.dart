import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/widgets/otpTextField_widget.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text("Verify Code",style: Theme.of(context).textTheme.headline1,),
            SizedBox(height: 10,),
            Text("We sent a code to (*****g@gmail.com) Enter the code here to verify your identify",style: Theme.of(context).textTheme.headline3,),
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
            SizedBox(height: 20,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Resend Code in ",style:TextStyle(color: primaryColor2)),
                  Text("00:23 ",style:TextStyle(color: Colors.black)),
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}
