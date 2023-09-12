
import 'package:consultation_medical/features/screens/Appointment/patientDetailScreen.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/const/strings.dart';
import '../../../core/helper/app_navigator.dart';
import '../../../core/styles/app_colors.dart';
import '../../../core/styles/app_size.dart';
import '../../../core/styles/app_txt_style.dart';

class SelectPackageScreen extends StatefulWidget {
  const SelectPackageScreen({super.key});

  @override
  State<SelectPackageScreen> createState() => _SelectPackageScreenState();
}

class _SelectPackageScreenState extends State<SelectPackageScreen> {
  String pack='';
  List<String> duration= ['30 min', '40 min', '60 min'];
  String selectedValue="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text('Appointment.select-pack'.tr(),

              style: AppTextStyle(size: 18, fontweight: FontWeight.w600,color: Theme.of(context).colorScheme.secondary) ),
        ),
  
        body:Padding(
          padding: const EdgeInsets.only(left: 20,right: 15,bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Appointment.select-duration'.tr(),style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w500),),
                  SizedBox(height: 10,),
                  Center(
                    child: Container(
                      width: AppSize.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: placeHolderColor
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0,right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Icon(Icons.access_time_filled,color: Theme.of(context).colorScheme.secondary,),
                            SizedBox(width: 10,),
                            SizedBox(

                              width: AppSize.width*0.7,
                              child: DropdownButton(

                                  value: duration[0],
                                  items: duration.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(

                                      value: value,
                                      child: Text("$value",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.w500)),
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
                            //Icon(Icons.access_time_sharp,color: Theme.of(context).colorScheme.secondary,),
                            SizedBox(width: 10,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('Appointment.select-pack'.tr(),style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w500),),
                  SizedBox(height: 30,),

                  Container(
                    decoration: BoxDecoration(

                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow:const [
                        BoxShadow(
                          color: Color.fromRGBO(100, 100, 111, 0.2),
                          offset: Offset(0, 7),
                          blurRadius: 29,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 0.0,top: 10,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Container(
                              width:45.0,
                              height: 45.0,
                              decoration:const BoxDecoration(
                                shape: BoxShape.circle,
                                color: filledColor,
                              ),
                              child: Center(
                                child: Icon(Icons.chat,color: primary_Color,),
                              ),
                            ),

                          ),
                          SizedBox(
                            width: AppSize.width*0.72,
                            child: RadioListTile(
                              activeColor: primary_Color,
                              title:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Messaging'.tr(),style:AppTextStyle(size: 14, fontweight: FontWeight.w600,color:Theme.of(context).colorScheme.secondary)),
                                      SizedBox(height: 5,),
                                      Text('chat Messages with doctor'.tr(),style: AppTextStyle(
                                        color: textColor2,
                                        size: 10, fontweight: FontWeight.w500, ) )

                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('\$ 20',
                                          style: AppTextStyle(
                                            color: doollarColor,
                                            size: 14, fontweight: FontWeight.bold,) ),
                                      SizedBox(height: 5,),
                                      Text('Appointment.duration'.tr()
                                          ,style: AppTextStyle(
                                            color: textColor2,
                                            size: 10, fontweight: FontWeight.normal, ) )

                                    ],
                                  ),
                                ],
                              ),

                              value: 'Messaging'.tr(),
                              groupValue: pack,
                              onChanged: (value){
                                setState(() {
                                  pack = value.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(

                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow:const [
                        BoxShadow(
                          color: Color.fromRGBO(100, 100, 111, 0.2),
                          offset: Offset(0, 7),
                          blurRadius: 29,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 0.0,top: 10,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Container(
                              width:45.0,
                              height: 45.0,
                              decoration:const BoxDecoration(
                                shape: BoxShape.circle,
                                color: filledColor,
                              ),
                              child: Center(
                                child: Icon(CupertinoIcons.phone_fill,color: primary_Color,),
                              ),
                            ),

                          ),
                          SizedBox(
                            width: AppSize.width*0.72,
                            child: RadioListTile(
                              activeColor: primary_Color,
                              title:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Appointment.voice-call'.tr(),style:AppTextStyle(size: 14, fontweight: FontWeight.w600,color:Theme.of(context).colorScheme.secondary)),
                                      SizedBox(height: 5,),
                                      Text('Appointment.voice-call-desc'.tr(),style: AppTextStyle(
                                        color: textColor2,
                                        size: 10, fontweight: FontWeight.w500, ) )

                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('\$ 20',
                                          style: AppTextStyle(
                                            color: doollarColor,
                                            size: 14, fontweight: FontWeight.bold,) ),
                                      SizedBox(height: 5,),
                                      Text('Appointment.duration'.tr()
                                        ,style: AppTextStyle(
                                        color: textColor2,
                                        size: 10, fontweight: FontWeight.normal, ) )

                                    ],
                                  ),
                                ],
                              ),

                              value: 'Appointment.voice-call'.tr(),
                              groupValue: pack,
                              onChanged: (value){
                                setState(() {
                                  pack = value.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(

                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow:const [
                        BoxShadow(
                          color: Color.fromRGBO(100, 100, 111, 0.2),
                          offset: Offset(0, 7),
                          blurRadius: 29,
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 0.0,top: 10,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Container(
                              width:45.0,
                              height: 45.0,
                              decoration:const BoxDecoration(
                                shape: BoxShape.circle,
                                color: filledColor,
                              ),
                              child: Center(
                                child: Icon(CupertinoIcons.video_camera_solid,color: primary_Color,size: 32,),
                              ),
                            ),

                          ),
                          SizedBox(
                            width: AppSize.width*0.72,
                            child: RadioListTile(
                              activeColor: primary_Color,
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Appointment.video-call'.tr(),style:AppTextStyle(size: 14, fontweight: FontWeight.w600,color:Theme.of(context).colorScheme.secondary)),
                                      SizedBox(height: 5,),
                                      Text('Appointment.video-call-desc'.tr(),style: AppTextStyle(
                                      color: textColor2,
                                      size: 10, fontweight: FontWeight.w500, ) )

                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('\$ 20',
                                          style: AppTextStyle(
                                            color: doollarColor,
                                            size: 14, fontweight: FontWeight.bold,) ),
                                      SizedBox(height: 5,),
                                      Text('Appointment.duration'.tr(),style: AppTextStyle(
                                      color: textColor2,
                                      size: 10, fontweight: FontWeight.normal, ) )

                                    ],
                                  ),
                                ],
                              ),
                              value:'Appointment.video-call'.tr(),
                              groupValue: pack,
                              onChanged: (value){
                                setState(() {
                                  pack = value.toString();
                                });
                              },
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),



              Center(
                child: SizedBox(
                  width: AppSize.width*0.9,
                  child: DefaultButton(

                      onPressed: (){
                        push(context: context, screen: PatientDetail());
                        }, text: 'Button.next'.tr()),
                ),
              )
            ],
          ),
        )
    );
  }
}
