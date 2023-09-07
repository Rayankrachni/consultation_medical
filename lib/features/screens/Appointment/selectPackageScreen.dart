
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
  
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Appointment.select-duration'.tr(),style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w500),),
                  SizedBox(height: 10,),
                  Container(
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
                  SizedBox(height: 30,),
                  Text('Appointment.select-pack'.tr(),style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w500),),
                  SizedBox(height: 30,),
                  Container(

                    decoration: BoxDecoration(

                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 7,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 0.0,top: 10,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(

                            height: 45,
                            width:45,
                            decoration:const BoxDecoration(
                                color: filledColor,
                                shape: BoxShape.circle
                            ),
                            child: Icon(CupertinoIcons.chat_bubble_2_fill,color: primary_Color,),
                          ),
                          SizedBox(
                            width: AppSize.width*0.75,
                            child: RadioListTile(
                              title: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Appointment.messaging'.tr(),style:AppTextStyle(size: 14, fontweight: FontWeight.w600,color:Theme.of(context).colorScheme.secondary)),
                                      SizedBox(height: 5,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text('Appointment.messaging-desc'.tr(),style: AppTextStyle(
                                          color: textColor2,
                                          size: 10, fontweight: FontWeight.w500, ) )
                                      ),

                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                        Text('\$ 20',style: AppTextStyle(
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
                              value:'Appointment.messaging'.tr(),
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 7,
                          blurRadius: 7,
                          offset: Offset(2, 2), // changes position of shadow
                        ),
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
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration:const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child:Icon(CupertinoIcons.phone_fill,color: primary_Color,),
                                ),
                              ),
                            ),

                          ),
                          SizedBox(
                            width: AppSize.width*0.72,
                            child: RadioListTile(
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 7,
                          blurRadius: 7,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
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
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration:const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(CupertinoIcons.video_camera_solid,color: primary_Color,),
                                ),
                              ),
                            ),

                          ),
                          SizedBox(
                            width: AppSize.width*0.72,
                            child: RadioListTile(
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
            ),



            Padding(
              padding: const EdgeInsets.all(15.0),
              child: DefaultButton(

                  onPressed: (){
                    push(context: context, screen: PatientDetail());
                    }, text: 'Button.next'.tr()),
            )
          ],
        )
    );
  }
}
