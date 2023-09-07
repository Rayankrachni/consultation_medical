import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AvailableDoctorCard extends StatelessWidget {
  const AvailableDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0,top: 10.0,bottom: 10.0),
      child: Container(
        height: AppSize.height*0.3,
        width: AppSize.width*0.37,
        decoration: BoxDecoration(

            borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
            color:Theme.of(context).cardColor,
         ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Container(
              height: AppSize.height*0.18,
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
            SizedBox(height: 5,),

            Padding(
              padding: const EdgeInsets.only(top: 5.0,left: 5.0,right: 5.0),
              child: Container(


                width:AppSize.width*0.15,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onBackground,
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0,bottom: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.star_fill,color: Colors.amber,size: 12,),
                      SizedBox(width: 3,),
                      Text("4.8",style: TextStyle(
                          color:Theme.of(context).colorScheme.secondary,
                          fontSize: 12,fontWeight: FontWeight.normal,
                          fontFamily: 'inter'
                      ),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 5.0,right: 5.0),
              child: SizedBox(
                width: AppSize.width*0.3,
                child: Text("Dr. Wilson",style: TextStyle(
                    color:Theme.of(context).colorScheme.secondary,
                    fontSize: 16,fontWeight: FontWeight.w700,
                    fontFamily: 'inter',
                    overflow: TextOverflow.ellipsis
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0,right: 5.0,top: 3),
              child: SizedBox(
                width: AppSize.width*0.2,
                child:const Text("Cardiology",style: TextStyle(
                    color:textColor2,
                    fontSize: 12,fontWeight: FontWeight.w600,
                    fontFamily: 'inter',
                    overflow: TextOverflow.ellipsis
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
