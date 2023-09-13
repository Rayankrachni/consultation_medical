
import 'package:consultation_medical/core/helper/theme/app_theme_provider.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/styles/app_colors.dart';
import '../../core/styles/app_size.dart';
class CancelledWidget extends StatelessWidget {
  const CancelledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider provider =Provider.of<ThemeProvider>(context);
    return  Padding(
      padding: const EdgeInsets.only(bottom: 20.0,left: 5,right: 5),
      child: Container(

        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius:const BorderRadius.all(Radius.circular(15)),
            boxShadow:  [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                offset:const Offset(0, 7),
                blurRadius: 29,
                spreadRadius: 0,
              )



            ]
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10,top: 15,bottom: 15),
          child: Column(
            children: [
              SizedBox(
                width: AppSize.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 90,
                      width: 100,
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
                    SizedBox(
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr Mary Rose c", style:AppTextStyle(size: 16, fontweight: FontWeight.bold,color:Theme.of(context).colorScheme.secondary,)),
                          Text("Specialist: Psychiatrist",style:AppTextStyle(size: 11, fontweight: FontWeight.w500,color:textColor2)),

                          Padding(
                            padding: const EdgeInsets.only(top: 7.0,bottom: 7),
                            child: Row( children: [
                                  Text("Video call",style:AppTextStyle(size: 12, fontweight: FontWeight.w600,color:provider.darkTheme? Colors.white :textColor1,)),
                                  const SizedBox(width: 10,),
                                  Text("Cancelled",style:AppTextStyle(size: 12, fontweight: FontWeight.w500,color:errorColor)),
                                ],
                            ),
                          ),
                          Row(children: [
                              const Icon(Icons.calendar_month,color: primary_Color,size: 18,),
                              const SizedBox(width: 5,),
                              Text("Today 2:30 pm-3:00 pm",style: TextStyle(
                                color:Theme.of(context).colorScheme.secondary,
                                 fontSize: 12,fontWeight: FontWeight.normal
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color:provider.darkTheme?Colors.black45 :filledColor,
                          shape: BoxShape.circle
                      ),
                      child:const Icon(Icons.video_camera_back_sharp,color: primaryColor,size: 22,),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}
