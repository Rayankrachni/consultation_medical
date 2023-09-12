import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  SearchCard({super.key,required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:20.0),
      child: Container(

        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.12),
              offset: Offset(0, 7),
              blurRadius: 29,
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 85,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 1.0,
                              offset:const Offset(0.1, 3)
                          )

                        ],
                        color: Theme.of(context).cardColor,
                        image: DecorationImage(image: NetworkImage("https://as2.ftcdn.net/v2/jpg/02/60/04/09/1000_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg"),fit: BoxFit.cover,)
                    ),

                  ),
                  SizedBox(

                    width: AppSize.width*0.63,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Dr Mary Rose c",style: TextStyle(
                                    color:Theme.of(context).colorScheme.secondary,
                                    fontSize: 15,fontWeight: FontWeight.w600,fontFamily: "inter"
                                ),),
                                SizedBox(height: 4,),
                                Text("Psychiatrist",style: AppTextStyle(size: 12, fontweight:  FontWeight.w500,color: textColor2,)),
                              ],
                            ),

                            IconButton(onPressed: (){}, icon:Icon( Icons.favorite,color: Colors.red,))
                          ],
                        ),
                        SizedBox(height: 10,),
                        SizedBox(

                          width: AppSize.width*0.65,
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             const Row(
                                children: [
                                  Icon(Icons.star,color: Color(0xffF7D268),size: 17),
                                  Icon(Icons.star,color: Color(0xffF7D268),size: 17,),
                                  Icon(Icons.star,color: Color(0xffF7D268),size: 17,),
                                  Icon(Icons.star,color:Color(0xffF7D268),size: 17,),
                                  Icon(Icons.star,color:Color(0xffF7D268),size: 17,),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("4.4",style: TextStyle(
                                      color: Theme.of(context).colorScheme.secondary,
                                      fontSize: 14,fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(width: 5,),

                                  Text("(8545 ${'Review.reviews'.tr()})",style: AppTextStyle(size: 12, fontweight:  FontWeight.w500,color: textColor2,)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AppSize.width*0.4,
                    height: 40,
                    child: ElevatedButton(onPressed: (){},

                      style: ElevatedButton.styleFrom(
                      primary: witeColor3, // Set the button's background color
                      onPrimary: Theme.of(context).colorScheme.secondary,
                      elevation: 0, // Set the elevation (shadow) of the button
                     shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Set the border radius
                          ),
                      // Set the minimum width and height
                      // Add more properties as needed, e.g., padding, textStyle, etc.
                      ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.message,size: 16,color: Colors.black,),
                            SizedBox(width: 10,),
                            Text('HomePage.messages'.tr(),style: AppTextStyle(size: 12, fontweight:  FontWeight.w600,color: Colors.black,))
                          ],
                        )),
                  ),
                  SizedBox(
                    width: AppSize.width*0.4,
                    height: 40,
                    child: ElevatedButton(onPressed: onPressed,

                        style: ElevatedButton.styleFrom(
                          primary: primaryColor, // Set the button's background color
                          onPrimary: Colors.white, // Set the text color
                          elevation: 0, // Set the elevation (shadow) of the button
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // Set the border radius
                          ),
                          // Set the minimum width and height
                          // Add more properties as needed, e.g., padding, textStyle, etc.
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.calendar_month,size: 16,),
                            SizedBox(width: 5,),
                            Text('HomePage.appointment'.tr(),style: AppTextStyle(size: 12, fontweight:  FontWeight.w500,color: Colors.white,))
                          ],
                        )),
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
