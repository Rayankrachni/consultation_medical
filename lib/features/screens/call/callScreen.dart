
import 'dart:ui';

import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/screens/Appointment/CallEndedScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          width: AppSize.width,
          height: AppSize.height,
          decoration:const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://th.bing.com/th/id/OIP.2-lUquWQ7e2RAd2hq_tnbAAAAA?pid=ImgDet&rs=1",),fit: BoxFit.cover
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 20,right: 20),
                child: Align(

                  alignment: Alignment.topRight,
                  child: Container(
                    height: AppSize.height*0.12,
                    width: AppSize.height*0.12,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                            image: NetworkImage("https://as2.ftcdn.net/v2/jpg/02/60/04/09/1000_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",),fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
              ),
              Column(

                children: [
                  Text("Dr. Wilson apk",style: AppTextStyle(size: 16, fontweight: FontWeight.w600,color: Colors.black),),
                  const SizedBox(height: 10,),
                  Text("55:00",style: AppTextStyle(size: 14, fontweight: FontWeight.w600,color: Colors.black),),
                  const SizedBox(height: 20,),

                  Container(

                  decoration: BoxDecoration(
                      color: const Color(0xff023e8a).withOpacity(0.25),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  width: AppSize.width*0.8,

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Container(
                              decoration:const BoxDecoration(
                                  color: Color(0xff023e8a),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              width: AppSize.width*0.8,

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 55,
                                width: 55,
                                decoration:const BoxDecoration(
                                  color: filledColor,
                                  shape: BoxShape.circle,
                                ),
                                child:const Icon(Icons.video_camera_back_outlined, color: Colors.black, size: 22),
                              ),
                              const SizedBox(width: 20),
                              InkWell(
                                onTap: (){
                                  push(context: context, screen:const CallEndedScreen());
                                },
                                child: Container(
                                  height: 85,
                                  width: 85,
                                  decoration:const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(Icons.call_end, color: Colors.white, size: 35),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                height: 55,
                                width: 55,
                                decoration:const BoxDecoration(
                                  color: filledColor,
                                  shape: BoxShape.circle,
                                ),
                                child:const Icon(Icons.keyboard_voice_outlined, color: Colors.black, size: 25),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                  const SizedBox(height: 10,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
