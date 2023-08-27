import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/features/screens/searchScreen/searchScreen.dart';
import 'package:consultation_medical/features/widgets/service_widget.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../../core/helper/app_navigator.dart';
import '../../../../core/styles/app_size.dart';
import '../../../widgets/card_home_widget.dart';

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
            SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning 👋",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,fontWeight: FontWeight.w600
                        ),),
                        Text("User Full Name",style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,fontWeight: FontWeight.w500
                        ),),
                      ],
                    )
                  ],
                ),
                InkWell(
                  onTap: (){push(context: context, screen: SearchScreen());},
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration:const BoxDecoration(
                        color: filledColor,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.notifications_none,color: primaryColor,size: 25,),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20,),

            CustomTextFormField(controller: name, hintText: "Search  Doctor", prefixIcon: CupertinoIcons.search, textInputType: TextInputType.text,hide:true),
            const SizedBox(height: 20,),
            Container(
              width: AppSize.width,
              height: AppSize.height*0.25,
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [primaryColor,primaryColor1,primaryColor2], // Define your gradient colors
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

                         child:  Center(child: Text("Registration",style: TextStyle(fontSize: 12,color:primaryColor),)),
                       ),


                     ],
                   ),
                 )
                 //
                ],
              ),
            ),
            SizedBox(height: 10,),
            const  Text("Services ",style: TextStyle(
                color: Colors.black,
                fontSize: 18,fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 10,),
            SizedBox(
              height: 100,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [

                  ServicesWidget(title: 'Doctors',),
                  ServicesWidget(title: 'Consult',),
                  ServicesWidget(title: 'Hospital',),
                  ServicesWidget(title: 'Medicine',),
                  ServicesWidget(title: 'More',),
                ],
              ),
            ),
            const Text("Previous Doctor ",style: TextStyle(
                color: Colors.black,
                fontSize: 18,fontWeight: FontWeight.w500
            ),),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FistHomeCard(title: "Dr Daryl Nehls",category: "Family Doctor",),
                FistHomeCard(title: "Dr Daryl Nehls",category: "Psychologist",isAvailable: false,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FistHomeCard(title: "Dr Daryl Nehls",category: "Family Doctor",),
                FistHomeCard(title: "Dr Daryl Nehls",category: "Psychologist",isAvailable: false,),
              ],
            )

          ],
        ),
      ),
    );
  }
}
