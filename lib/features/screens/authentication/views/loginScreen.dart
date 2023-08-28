
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/features/screens/authentication/views/otpScree.dart';
import 'package:consultation_medical/features/screens/authentication/views/registerScreen.dart';
import 'package:consultation_medical/features/screens/homePage/homeScreen.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/app_navigator.dart';
class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  TextEditingController name=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sign In to Your account",style: Theme.of(context).textTheme.headline1,),
                SizedBox(height: 10,),
                Text("Welcome Back! Please enter your details",style: Theme.of(context).textTheme.headline3,),
                SizedBox(height: 20,),
                CustomTextFormField(controller: name, hintText: "Email", prefixIcon: Icons.email, textInputType: TextInputType.emailAddress),
                SizedBox(height: 10,),
                CustomTextFormField(controller: name, hintText: "PassWord", prefixIcon: Icons.password, textInputType: TextInputType.emailAddress),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){ push(context: context, screen: OtpScreen());},child: Text("Forget Password?",style: TextStyle(color: primaryColor2),),),
                ),
                DefaultButton(onPressed: (){  push(context: context, screen: HomePage());}, text: "Sign In"),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 2,
                      color: placeHolderColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: Text("or Sign in with",style: Theme.of(context).textTheme.headline3,),
                    ),
                    Container(
                      width: 100,
                      height: 2,
                      color: placeHolderColor,
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                          color:Theme.of(context).cardColor,
                          borderRadius:const BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 1.0,
                                offset:const Offset(0.1, 3)
                            )
                          ]

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset("assets/images/google-icon.png")),
                          SizedBox(width: 10,),
                          Text("Google",style: Theme.of(context).textTheme.headline3,),
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      height:50,
                      decoration: BoxDecoration(
                          color:Theme.of(context).cardColor,
                          borderRadius:const BorderRadius.all(Radius.circular(5)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 1.0,
                                offset:const Offset(0.0, 3)
                            )
                          ]

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset("assets/images/apple-icon.png")),
                          SizedBox(width: 10,),
                          Text("Apple",style: Theme.of(context).textTheme.headline3,),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text("Don't have an account?",style:Theme.of(context).textTheme.headline3),
                 TextButton(onPressed: (){
                  push(context: context, screen: RegisterScreen());
                  }, child:Text(" Sign Up",style:Theme.of(context).textTheme.headline4,),
                ),


              ],
            ),

          ],
        ),
      ),
    );
  }
}
