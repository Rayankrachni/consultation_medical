
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:flutter/material.dart';
class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController name=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                Text("Create an Account",style: Theme.of(context).textTheme.headline1,),
                SizedBox(height: 10,),
                Text("Create an Medicate account enjoy all services",style: Theme.of(context).textTheme.headline3,),
                SizedBox(height: 20,),
                CustomTextFormField(controller: name, hintText: "Full Name", prefixIcon: Icons.person, textInputType: TextInputType.emailAddress),

                SizedBox(height: 10,),
                CustomTextFormField(controller: name, hintText: "Email", prefixIcon: Icons.email, textInputType: TextInputType.emailAddress),
                SizedBox(height: 10,),
                CustomTextFormField(controller: name, hintText: "PassWord", prefixIcon: Icons.password, textInputType: TextInputType.emailAddress),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){},child: Text("Forget Password?",style: TextStyle(color: primaryColor2),),),
                ),
                DefaultButton(onPressed: (){}, text: "Sign In"),
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
                      width: 170,
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
                      width: 170,
                      height:50,
                      decoration: BoxDecoration(
                          color:Theme.of(context).cardColor,
                          borderRadius:const BorderRadius.all(Radius.circular(10)),
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
                Text("Already have account?",style:Theme.of(context).textTheme.headline3),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child:Text("Login",style:Theme.of(context).textTheme.headline4,),
                ),


              ],
            ),

          ],
        ),
      ),
    );
  }
}
