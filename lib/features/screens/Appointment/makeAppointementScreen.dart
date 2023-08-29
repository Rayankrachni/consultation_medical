
import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MakeAppointmentScreen extends StatelessWidget {
  const MakeAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
              const Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),

                ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,size: 30,)),
            ],
          ),
          SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
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
              const Text("(5.0)",style: TextStyle(
                  color: textColor2,
                  fontSize: 12,
                  fontFamily: regularfontFamilyName
              ),),

            ],
          ),
          SizedBox(height: 5,),
          Text("User Full Name",style: TextStyle(
              color:Theme.of(context).colorScheme.secondary,
              fontSize: 18,fontWeight: FontWeight.w500
          ),),
          const SizedBox(height: 5,),
          const Text("Good Morning 👋",style: TextStyle(
              color: textColor2,
              fontSize: 12,
              fontFamily: regularfontFamilyName
          ),),
          Expanded(

              child: Container(
                decoration: const BoxDecoration(
                  color: primary_Color,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,

                         children: [
                           Container(
                             height: 50,
                             width: 50,
                             decoration:const BoxDecoration(
                                 color: primaryColor2,
                                 shape: BoxShape.circle
                             ),
                             child: Icon(Icons.people,color: Colors.white,size: 28,),
                           ),
                           SizedBox(width: 10,),
                           const Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("1000 +",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontFamily: regularfontFamilyName,fontSize: 20),),

                               Text("Patients",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontFamily: regularfontFamilyName,fontSize: 14),)
                             ],
                           ),
                           SizedBox(width: 30,),
                           Container(
                             height: 50,
                             width: 50,
                             decoration:const BoxDecoration(
                                 color: primaryColor2,
                                 shape: BoxShape.circle
                             ),
                             child: Icon(Icons.verified,color: Colors.white,size: 28,),
                           ),
                           SizedBox(width: 10,),
                           const Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("5 Years",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontFamily: regularfontFamilyName,fontSize: 20),),

                               Text("Experiences",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontFamily: regularfontFamilyName,fontSize: 14),)
                             ],
                           ),
                         ],
                       ),
                     ),
                    Expanded(
                      child: Container(
                        decoration:  BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            )
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
