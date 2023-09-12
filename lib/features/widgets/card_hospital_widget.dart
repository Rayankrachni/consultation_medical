
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/styles/app_colors.dart';
import '../../core/styles/app_size.dart';

class HospitalWidgets extends StatelessWidget {
  const HospitalWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        width: AppSize.width*0.44,
        decoration: BoxDecoration(

            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              offset: Offset(0, 7),
              blurRadius: 29,
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 70,
                    decoration:const BoxDecoration(
                        image: DecorationImage(image:
                        NetworkImage("https://img.freepik.com/free-vector/hospital-logo-design-vector-medical-cross_53876-136743.jpg?w=740&t=st=1693214104~exp=1693214704~hmac=b41366ea8334f7b6a5a694d4203a632d37fd61df5cbb9ef52c205bb9cd96edcf"),)
                    ),

                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: AppSize.width*0.7,
                        child: Text("This is just a reminder when you have a chance could you please gives me",
                          style:
                          TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.normal,fontFamily: 'inter',overflow: TextOverflow.ellipsis),),
                    ),)

                ],
              ),
             Icon(CupertinoIcons.arrow_right_circle,color: Theme.of(context).colorScheme.secondary,)
            ],
          ),
        )
      ),
    );
  }
}
