import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/features/screens/homePage/views/notificationScreen.dart';
import 'package:consultation_medical/features/screens/profile/views/profileScreen.dart';
import 'package:consultation_medical/features/screens/reviews/writeReviewScreen.dart';
import 'package:consultation_medical/features/screens/searchScreen/searchScreen.dart';
import 'package:consultation_medical/features/screens/services/doctors/availableDoctorScreen.dart';
import 'package:consultation_medical/features/screens/services/hospital/hospitalScreen.dart';
import 'package:consultation_medical/features/widgets/healthNews_card_widget.dart';
import 'package:consultation_medical/features/widgets/service_widget.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:horizontal_list/horizontal_list.dart';

import '../../../../core/helper/app_navigator.dart';
import '../../../../core/styles/app_size.dart';
import '../../../widgets/availableDoctorCard_widget.dart';
import '../../../widgets/card_home_widget.dart';
import '../../../widgets/notification_widget.dart';
import '../../services/medicine/medicineScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController name=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 15.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SizedBox(height: 40,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                 Row(
                  children: [
                    InkWell(
                      onTap: (){push(context: context, screen: ProfileScreen());},
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${'Home.good-morning'.tr()} 👋",style:const TextStyle(
                          color: textColor2,
                          fontFamily: 'inter',
                          fontSize: 12,fontWeight: FontWeight.w400
                        ),),
                        const SizedBox(height: 3,),
                        Text("User Full Name",style: TextStyle(
                            fontFamily: 'inter',
                            color:Theme.of(context).colorScheme.secondary,
                            fontSize: 16,fontWeight: FontWeight.w600
                        ),),
                      ],
                    )
                  ],
                ),
                InkWell(
                  onTap: (){push(context: context, screen: NotificationScreen());},
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration:const BoxDecoration(
                        color: filledColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.notifications_none,color: primary_Color,size: 25,),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20,),

            CustomTextFormField(controller: name, hintText: 'Placeholder.search-doctor'.tr(), prefixIcon: CupertinoIcons.search, textInputType: TextInputType.text,hide:true),
            const SizedBox(height: 20,),
            Container(
              width: AppSize.width,
              height: AppSize.height*0.25,
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [primary_Color,primaryColor1,primaryColor2], // Define your gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: AppSize.width*0.3,
                    child: Image.network("https://www.pngall.com/wp-content/uploads/2018/05/Doctor-PNG-Clipart.png")
                  ),
                 SizedBox(
                   width: AppSize.width*0.6,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Your invited to join the live stream",style: TextStyle(fontSize: 14,color: Colors.white),),
                       SizedBox(height: 20,),
                       Text("A online session for \n healthy living on the vacation",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                       SizedBox(height: 10,),

                       Container(
                         height: AppSize.height*0.04,
                         width:AppSize.height*0.15,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Colors.white,
                         ),

                         child:  Center(child: Text("Registration",style: TextStyle(fontSize: 12,color:primary_Color),)),
                       ),


                     ],
                   ),
                 )
                 //
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text('Home.services'.tr(),style: TextStyle(
                color:Theme.of(context).colorScheme.secondary,
                fontSize: 18,fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 10,),
            SizedBox(
              height: 100,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [

                  ServicesWidget(title: 'Home.doctors'.tr(),onPressed: (){push(context: context, screen: AvailableDoctorScreen());},),
                  ServicesWidget(title: 'Home.consult'.tr(),onPressed: (){push(context: context, screen: MedicineScreen());},),
                  ServicesWidget(title: 'Home.hospital'.tr(),onPressed: (){push(context: context, screen: HospitalScreen());},),
                  ServicesWidget(title: 'Home.medicine'.tr(),onPressed: (){push(context: context, screen: MedicineScreen());},),
                  ServicesWidget(title: 'Home.more'.tr(),onPressed: (){},),
                ],
              ),
            ),
             Text('Home.prev-doctors'.tr(),style: TextStyle(
                color:Theme.of(context).colorScheme.secondary,
                fontSize: 18,fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: (){push(context: context, screen: WriteReview());},
                    child: FistHomeCard(title: "Dr Daryl Nehls",category: "Family Doctor",)),
                FistHomeCard(title: "Dr Daryl Nehls",category: "Psychologist",isAvailable: false,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Home.available-docts'.tr(),style: TextStyle(
                    color:Theme.of(context).colorScheme.secondary,
                    fontSize: 18,fontWeight: FontWeight.w500,
                    fontFamily: 'inter'
                ),),
                Text('Home.see-all'.tr(),style: TextStyle(
                    color:primary_Color,
                    fontFamily: 'inter',
                    fontSize: 14,fontWeight: FontWeight.w500
                ),),
              ],
            ),
            SizedBox(height: 10,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AvailableDoctorCard(),
                  AvailableDoctorCard(),
                  AvailableDoctorCard(),
                  AvailableDoctorCard(),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Home.health-new'.tr(),style: TextStyle(
                    color:Theme.of(context).colorScheme.secondary,
                    fontFamily: 'inter',
                    fontSize: 18,fontWeight: FontWeight.w500
                ),),
                Text('Home.see-all'.tr(),style:const TextStyle(
                    color:primary_Color,
                    fontFamily: 'inter',
                    fontSize: 14,fontWeight: FontWeight.w500
                ),),
              ],
            ),

            Column(
              children: [
                HealthCard(),
                HealthCard(),
                HealthCard(),
                HealthCard(),
              ],
            )

          ],
        ),
      ),
    );
  }
}
