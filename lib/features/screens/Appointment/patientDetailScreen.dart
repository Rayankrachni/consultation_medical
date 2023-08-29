
import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/features/screens/payment/paymentScreen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/styles/app_colors.dart';
import '../../../core/styles/app_size.dart';
import '../../widgets/button_Custom.dart';

class PatientDetail extends StatelessWidget {
   PatientDetail({super.key});
  TextEditingController cardNameController=TextEditingController();

  TextEditingController cardNumberController=TextEditingController();
  TextEditingController cvveController=TextEditingController();

  TextEditingController expiryDateController=TextEditingController();

   List<String> age= ['25', '30', '60'];
   List<String> gender= ['Male', 'Female'];
   String selectedValue="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:   Text('Appointment.patient-detail'.tr(),style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:20,fontWeight: FontWeight.w500),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
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
                  child: Text('Appointment.name'.tr(),style: Theme.of(context).textTheme.headline3,),
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
                    hintText:'Appointment.name'.tr(),

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
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Text('Appointment.gender'.tr(),style: Theme.of(context).textTheme.headline3,),
                ),
                Container(

                  width: AppSize.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                          color: placeHolderColor
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15),
                    child: DropdownButton(

                      value: gender[0],
                      items: gender.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(

                          value: value,
                          child: Text("$value",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.normal)),
                        );
                      }).toList(),
                      onChanged: (v){
                        selectedValue = v!;
                      },
                      alignment: Alignment.center,
                      isExpanded: true,
                      enableFeedback: true,
                      iconSize: 20,
                      underline: Container(),


                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Text('Appointment.age'.tr(),style: Theme.of(context).textTheme.headline3,),
                ),
                Container(

                  width: AppSize.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                          color: placeHolderColor
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15),
                    child: DropdownButton(

                      value: age[0],
                      items: age.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(

                          value: value,
                          child: Text("$value",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.normal)),
                        );
                      }).toList(),
                      onChanged: (v){
                        selectedValue = v!;
                      },
                      alignment: Alignment.center,
                      isExpanded: true,
                      enableFeedback: true,
                      iconSize: 20,
                      underline: Container(),


                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Text('Appointment.write-prbl'.tr(),style: Theme.of(context).textTheme.headline3,),
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

                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText:'Appointment.write-prbl'.tr(),

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

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: DefaultButton(onPressed: (){
                  push(context: context, screen: Payment());
              },
                  text: 'Button.next'.tr()),
            )
            //CustomTextFormField(controller: controller, hintText: hintText, prefixIcon: prefixIcon, textInputType: textInputType)
          ],
        ),
      ),
    );
  }
}
