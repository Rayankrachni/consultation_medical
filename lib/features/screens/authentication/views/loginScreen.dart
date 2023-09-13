
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/screens/authentication/views/otpScree.dart';
import 'package:consultation_medical/features/screens/authentication/views/registerScreen.dart';
import 'package:consultation_medical/features/screens/homePage/homeScreen.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/app_navigator.dart';
class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  TextEditingController name=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0,left: 20,right: 20),
        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login.signIn-title'.tr(),style: Theme.of(context).textTheme.headline1,),
                  SizedBox(height: 10,),
                  Text('Login.signIn-subtitle'.tr(),style: Theme.of(context).textTheme.headline3,),
                  SizedBox(height: 20,),
                  CustomTextFormField(controller: name, hintText: 'Placeholder.email'.tr(), prefixIcon: Icons.email, textInputType: TextInputType.emailAddress),
                  SizedBox(height: 10,),
                  CustomTextFormField(controller: name, hintText: 'Placeholder.password'.tr(), prefixIcon: Icons.password, textInputType: TextInputType.emailAddress),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){ push(context: context, screen: OtpScreen());},child: Text('Login.forget-password'.tr(),style: AppTextStyle(size: 14, fontweight: FontWeight.w500,color: primaryColor1),),),
                  ),
                  DefaultButton(onPressed: (){  push(context: context, screen: HomePage());}, text: 'Login.signIn-Button'.tr()),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 70,
                        height: 2,
                        color: placeHolderColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8),
                        child: Text('Login.signIn-or'.tr(),style: Theme.of(context).textTheme.headline3,),
                      ),
                      Container(
                        width: 70,
                        height: 2,
                        color: placeHolderColor,
                      ),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 180,
                        height: 50,
                        decoration: BoxDecoration(
                          color:Theme.of(context).colorScheme.background,
                            borderRadius:const BorderRadius.all(Radius.circular(5)),     boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: Offset(0, 7),
                            blurRadius: 29,
                            spreadRadius: 0,
                          )
                        ],

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset("assets/images/google-icon.png")),
                            SizedBox(width: 10,),
                            Text('Login.google'.tr(),style: AppTextStyle(size: 16, fontweight: FontWeight.w600,color: Theme.of(context).colorScheme.secondary)),
                          ],
                        ),
                      ),
                      Container(
                        width: 180,
                        height:50,
                        decoration: BoxDecoration(
                            color:Theme.of(context).colorScheme.background,
                            borderRadius:const BorderRadius.all(Radius.circular(5)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              offset: Offset(0, 7),
                              blurRadius: 29,
                              spreadRadius: 0,
                            )
                          ],

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset("assets/images/apple-icon.png")),
                            SizedBox(width: 10,),
                            Text('Login.apple'.tr(),style:  AppTextStyle(size: 16, fontweight: FontWeight.w600,color: Theme.of(context).colorScheme.secondary)),
                          ],
                        ),
                      ),
                      //
                    ],
                  )
                ],
              ),

              SizedBox(height: AppSize.height*0.15,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     Text('Login.dont-have-account'.tr(),style: AppTextStyle(size: 15, fontweight: FontWeight.w500,color: Theme.of(context).colorScheme.secondary)),
                     TextButton(onPressed: (){
                      push(context: context, screen: RegisterScreen());
                      }, child:Text('Register.signUp-Button'.tr(),style:Theme.of(context).textTheme.headline4,),
                    ),


                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
