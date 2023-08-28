
import 'package:flutter/material.dart';

import '../../core/styles/app_colors.dart';
import '../../core/styles/app_size.dart';
class CompleteWidget extends StatelessWidget {
   CompleteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 1.0,
                  offset:const Offset(0.1, 3)
              )

            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                width: AppSize.width,
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                blurRadius: 1.0,
                                offset:const Offset(0.1, 3)
                            )

                          ],
                          color: Colors.white,
                          image: DecorationImage(image: NetworkImage("https://as2.ftcdn.net/v2/jpg/02/60/04/09/1000_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg"),fit: BoxFit.cover,)
                      ),

                    ),
                    SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8),
                      child: SizedBox(
                        width: AppSize.width*0.52,
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dr Mary Rose c",style: TextStyle(
                                color:Theme.of(context).colorScheme.secondary,
                                fontSize: 15,fontWeight: FontWeight.w600
                            ),),
                            Text("Specialist: Psychiatrist",style: TextStyle(
                                color:textColor2,
                                fontSize: 12,fontWeight: FontWeight.normal
                            ),),

                            Padding(
                              padding: const EdgeInsets.only(top: 7.0,bottom: 7),
                              child: Row(
                                children: [
                                  Text("Video call",style: TextStyle(
                                      color:Theme.of(context).colorScheme.secondary,
                                      fontSize: 12,fontWeight: FontWeight.normal
                                  ),),
                                  SizedBox(width: 10,),
                                  Text("Scheduled",style: TextStyle(
                                      color:primary_Color,
                                      fontSize: 12,fontWeight: FontWeight.normal
                                  ),),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.calendar_month,color: primary_Color,size: 18,),
                                Text("Today 2:30 pm-3:00 pm",style: TextStyle(
                                    color:Theme.of(context).colorScheme.secondary,
                                    fontSize: 12,fontWeight: FontWeight.normal
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration:const BoxDecoration(
                          color: filledColor,
                          shape: BoxShape.circle
                      ),
                      child: Icon(Icons.video_camera_back_sharp,color: primaryColor,size: 20,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(color: placeHolderColor,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AppSize.width*0.41,
                    child: ElevatedButton(onPressed: (){},

                        style: ElevatedButton.styleFrom(
                          primary: witeColor3, // Set the button's background color
                          onPrimary: Theme.of(context).colorScheme.secondary,
                          elevation: 1, // Set the elevation (shadow) of the button
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Set the border radius
                          ),
                          // Set the minimum width and height
                          // Add more properties as needed, e.g., padding, textStyle, etc.
                        ),

                        child:Text("Book Again",style: TextStyle(fontSize: 12),)),
                  ),
                  SizedBox(
                    width: AppSize.width*0.41,
                    child: ElevatedButton(onPressed: (){},

                        style: ElevatedButton.styleFrom(
                          primary: primaryColor, // Set the button's background color
                          onPrimary: Colors.white, // Set the text color
                          elevation: 1, // Set the elevation (shadow) of the button
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Set the border radius
                          ),
                          // Set the minimum width and height
                          // Add more properties as needed, e.g., padding, textStyle, etc.
                        ),

                        child:  Text("Leave a Review",style: TextStyle(fontSize: 12),)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
