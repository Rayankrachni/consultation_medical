import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
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
      padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 15.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SizedBox(height: 30,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                 Row(
                  children: [
                    InkWell(
                      onTap: (){push(context: context, screen: ProfileScreen());},
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage("https://www.mnp.ca/-/media/foundation/integrations/personnel/2020/12/16/13/57/personnel-image-4483.jpg?h=800&w=600&hash=9D5E5FCBEE00EB562DCD8AC8FDA8433D"),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${'Home.good-morning'.tr()} 👋",style:AppTextStyle(size: 12, fontweight: FontWeight.w600,color: textColor2)),
                        const SizedBox(height: 3,),
                        Text("User Full Name",style: AppTextStyle(size: 16,  color:Theme.of(context).colorScheme.secondary, fontweight: FontWeight.w700,),
                       ),
                      ],
                    )
                  ],
                ),
                InkWell(
                  onTap: (){push(context: context, screen: NotificationScreen());},
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: disableColor),
                        color: Theme.of(context).colorScheme.onBackground,
                        shape: BoxShape.circle
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(Icons.notifications_none,color: primary_Color,size: 30,),
                      Positioned(
                        top: AppSize.height*0.012,
                        left: AppSize.height*0.027,
                        child: Container(
                        height:AppSize.height*0.01,
                        width: AppSize.height*0.01,
                        decoration:const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),

                        ),
                      ),

                      ],
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){push(context: context, screen: SearchScreen());},
              child: Container(
                width: AppSize.width,
                decoration: BoxDecoration(
                  border: Border.all(color: placeHolderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Icon(
                         CupertinoIcons.search,
                        size: 22,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      SizedBox(width: 15,),
                      Text('Placeholder.search-doctor'.tr(),style: AppTextStyle(size: 14, fontweight: FontWeight.normal,color: placeHolderColor),)
                    ],
                  ),
                ),
              ),
            ),
            //CustomTextFormField(controller: name, hintText: 'Placeholder.search-doctor'.tr(), prefixIcon: CupertinoIcons.search, textInputType: TextInputType.text,hide:true),
            const SizedBox(height: 20,),
            Container(
              width: AppSize.width,
              height: AppSize.height*0.2,
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
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
            SizedBox(height: 20,),

            Text('Home.services'.tr(),style: AppTextStyle(size: 18, fontweight:  FontWeight.w600,color:Theme.of(context).colorScheme.secondary,)),
            const SizedBox(height: 10,),
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ServicesWidget(title: 'Home.doctors'.tr(),onPressed: (){push(context: context, screen: AvailableDoctorScreen());},iconData: CupertinoIcons.person_alt,),
                  ServicesWidget(title: 'Home.consult'.tr(),onPressed: (){push(context: context, screen: MedicineScreen());},iconData: CupertinoIcons.rectangle_expand_vertical),
                  ServicesWidget(title: 'Home.hospital'.tr(),onPressed: (){push(context: context, screen: HospitalScreen());},iconData: Icons.local_hospital),
                  ServicesWidget(title: 'Home.medicine'.tr(),onPressed: (){push(context: context, screen: MedicineScreen());},iconData:Icons.medical_information),
                  ServicesWidget(title: 'Home.more'.tr(),onPressed: (){},iconData: Icons.add_box),

                ],
              )
            ),
            const SizedBox(height:10,),
             Text('Home.prev-doctors'.tr(),style: AppTextStyle(size: 18, fontweight:  FontWeight.w600,color:Theme.of(context).colorScheme.secondary,)),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: (){push(context: context, screen: WriteReview());},
                    child: FistHomeCard(title: "Dr Daryl Nehls",category: "Family Doctor",)),
                FistHomeCard(title: "Dr Daryl Nehls",category: "Psychologist",isAvailable: false,),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Home.available-docts'.tr(),style: AppTextStyle(size: 18, fontweight:  FontWeight.w600,color:Theme.of(context).colorScheme.secondary,)),
                Text('Home.see-all'.tr(),style: AppTextStyle(size: 15, fontweight:  FontWeight.w500,color:primaryColor1,)),
              ],
            ),
            SizedBox(height:20,),

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
                Text('Home.health-new'.tr(),style: AppTextStyle(size: 18, fontweight:  FontWeight.w600,color:Theme.of(context).colorScheme.secondary,)),
                Text('Home.see-all'.tr(),style: AppTextStyle(size: 15, fontweight:  FontWeight.w500,color:primaryColor1,)),
              ],
            ),
            SizedBox(height: 20,),
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
