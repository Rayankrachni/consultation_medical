

import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/helper/theme/app_theme_provider.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/screens/Appointment/CallEndedScreen.dart';
import 'package:consultation_medical/features/screens/call/callScreen.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/styles/app_txt_style.dart';

class AppointmentSCompleteScreen extends StatefulWidget {
  const AppointmentSCompleteScreen({super.key});

  @override
  State<AppointmentSCompleteScreen> createState() => _AppointmentSCompleteScreenState();
}

class _AppointmentSCompleteScreenState extends State<AppointmentSCompleteScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider provider=Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('HomePage.my-appointment'.tr(),

            style: AppTextStyle(size: 18, fontweight: FontWeight.w600,color: Theme.of(context).colorScheme.secondary) ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: AppSize.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          Container(
                            height: 90,
                            width: 85,
                            decoration: BoxDecoration(

                                borderRadius:const BorderRadius.all(Radius.circular(5)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 1.0,
                                      offset:const Offset(0.1, 3)
                                  )

                                ],
                                color: Colors.white,
                                image:const DecorationImage(image: NetworkImage("https://as2.ftcdn.net/v2/jpg/02/60/04/09/1000_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg"),fit: BoxFit.cover,)
                            ),

                          ),
                          const SizedBox(width: 10,),

                          SizedBox(
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Dr Mary Rose c",style:AppTextStyle(size: 16, fontweight: FontWeight.bold,color:Theme.of(context).colorScheme.secondary,)),
                                const SizedBox(height: 9,),
                                Text("Specialist: Psychiatrist",style:AppTextStyle(size: 11, fontweight: FontWeight.w500,color:textColor2)),

                                Padding(
                                  padding: const EdgeInsets.only(top: 9.0,bottom: 9),
                                  child: Row(
                                    children: [
                                      Text("Video call",style:AppTextStyle(size: 12, fontweight: FontWeight.w600,color:textColor1)),
                                      const SizedBox(width: 10,),
                                      Text("scheduled",style:AppTextStyle(size: 12, fontweight: FontWeight.w500,color:primaryColor2)),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.calendar_month,color: primary_Color,size: 18,),
                                    Text("Today 2:30 pm-3:00 pm",style: TextStyle(
                                        color:Theme.of(context).colorScheme.secondary,
                                        fontSize: 12,fontWeight: FontWeight.normal
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color:provider.darkTheme?Colors.black45 :filledColor,
                            shape: BoxShape.circle
                        ),
                        child:const Icon(Icons.video_camera_back_sharp,color: primaryColor,size: 25,),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Divider(color: Colors.grey.withOpacity(0.2),thickness: 1,),
                const SizedBox(height: 10,),
                Text("Patient Information",style:AppTextStyle(size: 18, fontweight: FontWeight.w600,color:Theme.of(context).colorScheme.secondary,)),
                const SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Name",style:AppTextStyle(size: 14, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,)),
                          const SizedBox(width: 10,),
                          Text(":",style:AppTextStyle(size: 14, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,)),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: AppSize.width*0.7,
                              child: Text("Full Name ",
                                  style:TextStyle(
                                    fontWeight:  FontWeight.normal,
                                      color:Theme.of(context).colorScheme.secondary,
                                      fontSize: 14,fontFamily: "inter",
                                      overflow: TextOverflow.ellipsis,


                                  )



                                 )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                      child: Row(
                        children: [
                          Text("Gender",style:AppTextStyle(size: 14, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,)),
                          const SizedBox(width: 10,),
                          Text(":",style:AppTextStyle(size: 14, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,)),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: AppSize.width*0.65,
                              child: Text("Male",
                                  style:TextStyle(
                                      fontWeight:  FontWeight.normal,
                                      color:Theme.of(context).colorScheme.secondary,
                                      fontSize: 14,fontFamily: "inter",
                                      overflow: TextOverflow.ellipsis

                                  )



                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                      child: Row(
                        children: [
                          Text("Age",style:AppTextStyle(size: 14, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,)),
                          const SizedBox(width: 10,),
                          Text(":",style:AppTextStyle(size: 14, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,)),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: AppSize.width*0.7,
                              child: Text("25",
                                  style:TextStyle(
                                      fontWeight:  FontWeight.normal,
                                      color:Theme.of(context).colorScheme.secondary,
                                      fontSize: 14,fontFamily: "inter",
                                      overflow: TextOverflow.ellipsis

                                  )



                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text("Problem",style:AppTextStyle(size: 14, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,)),
                          ),
                          const SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text(":",style:AppTextStyle(size: 14, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,)),
                          ),
                          const SizedBox(width: 10,),
                          SizedBox(
                              width: AppSize.width*0.65,
                              child: Text("Problem Problem Problem Problem ProblemProblem Problem ProblemProblem Problem Problem Problem Problem",
                                style:TextStyle(
                                  fontWeight:  FontWeight.normal,
                                  color:Theme.of(context).colorScheme.secondary,
                                  fontSize: 14,fontFamily: "inter",
                                  height: 1.7,
                                  overflow: TextOverflow.ellipsis


                                ),
                                maxLines: 3,
                           )),
                        ],
                      ),
                    ),


                   ],
                ),
                const SizedBox(height: 20,),
                Text("Your Package",style:AppTextStyle(size: 18, fontweight: FontWeight.w600,color:Theme.of(context).colorScheme.secondary,)),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(

                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(100, 100, 111, 0.2),
                        offset: Offset(0, 7),
                        blurRadius: 29,
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0,right: 0.0,top: 15,bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width:45.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:provider.darkTheme?Colors.black45 :filledColor,
                            ),
                            child:const Center(
                              child: Icon(CupertinoIcons.video_camera_solid,color: primary_Color,size: 30,),
                            ),
                          ),

                        ),
                        const SizedBox(width: 10,),

                        SizedBox(
                          width: AppSize.width*0.65,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Appointment.video-call'.tr(),style:AppTextStyle(size: 14, fontweight: FontWeight.w600,color:Theme.of(context).colorScheme.secondary)),
                                  const SizedBox(height: 5,),
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
                                        size: 16, fontweight: FontWeight.bold,) ),
                                  SizedBox(height: 5,),
                                  Text('Appointment.duration'.tr(),style: AppTextStyle(
                                    color: textColor2,
                                    size: 10, fontweight: FontWeight.normal, ) )

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
            DefaultButton(

                onPressed: (){
                  push(context: context, screen: CallScreen());
                  //push(context: context, screen:const CallEndedScreen());
                }, text: 'Video Call Start 2:30 pm'.tr())
          ],
        ),
      ),

    );
  }
}
