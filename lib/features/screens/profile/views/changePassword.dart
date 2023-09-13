import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
   ChangePassword({super.key});

   TextEditingController currentPasswordController= TextEditingController();
   TextEditingController newPasswordController= TextEditingController();
   TextEditingController confirmPasswordController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile.change-pswd'.tr(),
          style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.bold,fontFamily: "inter"),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextFormField(controller: currentPasswordController, hintText: 'Profile.current-psw'.tr(), prefixIcon: CupertinoIcons.padlock, textInputType: TextInputType.text),
                  const SizedBox(height: 10,),
                  CustomTextFormField(controller: newPasswordController, hintText: 'Profile.new-psw'.tr(), prefixIcon: CupertinoIcons.padlock, textInputType: TextInputType.text,obscureText: true,),
                  const SizedBox(height: 10,),
                  CustomTextFormField(controller: confirmPasswordController, hintText: 'Profile.confirm-new-psw'.tr(), prefixIcon: CupertinoIcons.padlock, textInputType: TextInputType.text,obscureText: true,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 28.0),
              child: DefaultButton(onPressed: (){}, text:'Appointment.save-changes'.tr()),
            ),


          ],
        ),
      ),
    );
  }
}
