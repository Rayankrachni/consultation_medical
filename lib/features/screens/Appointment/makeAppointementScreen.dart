
import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/screens/Appointment/selectPackageScreen.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MakeAppointmentScreen extends StatefulWidget {
   MakeAppointmentScreen({super.key});

  @override
  State<MakeAppointmentScreen> createState() => _MakeAppointmentScreenState();
}

class _MakeAppointmentScreenState extends State<MakeAppointmentScreen> {
   late DateTime lastDayOfMonth;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
    final currentDate = lastDayOfMonth.add(Duration(days: now.day));
    String longText=  ' Appoin tment  tment t.biogrn aphy Appoint ment biog raph iogra phy .biograph iography Appoi ntment. biography';
    bool showMore=false;
    return Scaffold(
      appBar: AppBar(

        //leading:    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Theme.of(context).colorScheme.secondary,)),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,size: 30,)),

    ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),

          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.amber,
                      size:17,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.amber,
                      size:17,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.amber,
                      size:17,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.amber,
                      size:17,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 5,),
              Text("(5.0)",style: AppTextStyle(
                color: placeHolderColor,
                size: 12, fontweight: FontWeight.w600,)),

            ],
          ),
          SizedBox(height: 5,),
          Text("User Full Name",style: AppTextStyle(
            color: Theme.of(context).colorScheme.secondary,
            size: 17, fontweight: FontWeight.w600,)),
          const SizedBox(height: 5,),
          Text("Chest Diseases ",style: AppTextStyle(
              color: textColor2,
              size: 12, fontweight: FontWeight.w600,)),
          SizedBox(height: AppSize.height*0.035,),
          Expanded(

              child: Container(
                decoration: const BoxDecoration(
                  color: appointmentColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Padding(
                       padding: const EdgeInsets.all(30.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,

                         children: [
                           Container(
                             height: 50,
                             width: 50,
                             decoration:const BoxDecoration(
                                 color: primaryColor2,
                                 shape: BoxShape.circle
                             ),
                             child:const Icon(Icons.people,color: Colors.white,size: 28,),
                           ),
                            Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("1000 +",style: AppTextStyle(
                                 color: Colors.white,
                                 size: 18, fontweight: FontWeight.w600,),),

                               Text("Patients",style:AppTextStyle(
                                 color:filledColor,
                                 size: 12, fontweight: FontWeight.w400,),)
                             ],
                           ),
                           const SizedBox(width: 30,),
                           Container(
                             height: 50,
                             width: 50,
                             decoration:const BoxDecoration(
                                 color: primaryColor2,
                                 shape: BoxShape.circle
                             ),
                             child:const Icon(Icons.verified,color: Colors.white,size: 28,),
                           ),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("5 Years",style:AppTextStyle(
                                 color: Colors.white,
                                 size: 18, fontweight: FontWeight.w600,),),

                               Text("Experiences",style:AppTextStyle(
                                 color:filledColor,
                                 size: 12, fontweight: FontWeight.w400,),)
                             ],
                           ),
                         ],
                       ),
                     ),
                    Expanded(
                      child: Container(
                        width: AppSize.width,
                        decoration:  BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius:const BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25,top: 20,bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Appointment.biography'.tr(),style: AppTextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    size: 16, fontweight: FontWeight.w600,)),
                                  const SizedBox(height: 10,),
                                  SizedBox(
                                    width: AppSize.width*0.9,
                                    child:  ExpandableText(
                                      longText,
                                      expandText: 'See more',
                                      collapseText: 'show less',
                                      animation: true,
                                      maxLines: 3,
                                      style:TextStyle(color: Color(0xff696D79),fontWeight: FontWeight.w500,fontSize: 12,overflow: TextOverflow.fade),

                                      linkColor: Colors.yellow,
                                    ),
                                  ),


                                  const SizedBox(height: 20,),
                                  Text('Appointment.appointment'.tr(),style: AppTextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    size: 16, fontweight: FontWeight.w600,)),
                                  const SizedBox(height: 20,),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: List.generate(
                                        lastDayOfMonth.day,
                                            (index) => Padding(
                                          padding: const EdgeInsets.only(right: 18.0),
                                          child: Container(
                                            height:70,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(color: placeHolderColor),
                                              color: index!=2? Theme.of(context).scaffoldBackgroundColor:primaryColor0,

                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                    () {
                                                  final currentDate =
                                                  lastDayOfMonth.add(Duration(days: index + 1));

                                                  final dateName = DateFormat('E').format(currentDate);
                                                  return Text(dateName, style: AppTextStyle(size: 11, fontweight: FontWeight.w700,color:index!=2? Theme.of(context).colorScheme.secondary:Colors.white),);
                                                }(),
                                                const SizedBox(height: 20,),
                                                Text(
                                                  "${index + 1}",
                                                  style:AppTextStyle(size: 11, fontweight: FontWeight.w700,color:index!=2? textColor2:Colors.white,),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 15,),
                                  Text('Appointment.schedule'.tr(),style: AppTextStyle(
                                    color: Theme.of(context).colorScheme.secondary,
                                    size: 16, fontweight: FontWeight.w600,)),
                                  const SizedBox(height: 20,),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: List.generate(
                                        lastDayOfMonth.day,
                                            (index) => Padding(
                                          padding: const EdgeInsets.only(right: 10.0),
                                          child: Container(
                                            height:30,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              color:index!=2? Theme.of(context).scaffoldBackgroundColor:primaryColor0,
                                              borderRadius: BorderRadius.circular(5),
                                              border: Border.all(color: placeHolderColor),

                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [

                                                Text(
                                                  "${index + 9}:00 am",
                                                  style:AppTextStyle(size: 11, fontweight: FontWeight.w700,color:index!=2? Theme.of(context).colorScheme.secondary:Colors.white),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),


                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height:60,
                                      width: AppSize.width*0.22,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(color: placeHolderColor)
                                      ),
                                      child: Icon(Icons.message,color: Theme.of(context).colorScheme.secondary,),
                                    ),
                                    SizedBox(width: 10,),
                                    SizedBox(
                                        height:60,
                                        width: AppSize.width*0.65,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: appointeDisableColor, // Set the button's background color
                                              onPrimary: filledColor,
                                              elevation: 0, // Set the elevation (shadow) of the button
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5), // Set the border radius
                                              ),
                                              // Set the minimum width and height
                                              // Add more properties as needed, e.g., padding, textStyle, etc.
                                            ),
                                            onPressed: (){
                                              push(context: context, screen: SelectPackageScreen());
                                            }, child: Text('Button.make-appointment'.tr())))

                                  ],
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    )

                  ],
                ),

              )
          )
        ],
      ),
    );
  }
}
