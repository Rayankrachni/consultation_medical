import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
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
        title: Center(
          child:   Text("Change Password",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w500),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextFormField(controller: currentPasswordController, hintText: "Current Passwod", prefixIcon: CupertinoIcons.padlock, textInputType: TextInputType.text),
                  CustomTextFormField(controller: newPasswordController, hintText: "Current Passwod", prefixIcon: CupertinoIcons.padlock, textInputType: TextInputType.text,obscureText: true,),
                  CustomTextFormField(controller: confirmPasswordController, hintText: "Current Passwod", prefixIcon: CupertinoIcons.padlock, textInputType: TextInputType.text,obscureText: true,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 28.0),
              child: DefaultButton(onPressed: (){}, text:"Save Changes"),
            ),


          ],
        ),
      ),
    );
  }
}
