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
        centerTitle: true,
        title: Text("Change Password",
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
                  CustomTextFormField(controller: currentPasswordController, hintText: "Current Passwod", prefixIcon: CupertinoIcons.padlock, textInputType: TextInputType.text),
                  SizedBox(height: 10,),
                  CustomTextFormField(controller: newPasswordController, hintText: "New Passwod", prefixIcon: CupertinoIcons.padlock, textInputType: TextInputType.text,obscureText: true,),
                  SizedBox(height: 10,),
                  CustomTextFormField(controller: confirmPasswordController, hintText: "Current New Passwod", prefixIcon: CupertinoIcons.padlock, textInputType: TextInputType.text,obscureText: true,)
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
