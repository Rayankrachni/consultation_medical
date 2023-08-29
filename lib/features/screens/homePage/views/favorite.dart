

import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/widgets/card_search_widget.dart';
import 'package:flutter/material.dart';

import '../../Appointment/makeAppointementScreen.dart';
import '../../Appointment/patientDetailScreen.dart';
import '../../Appointment/selectPackageScreen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 20,bottom: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(child: Text("Favorite Doctors",style: TextStyle( color:Theme.of(context).colorScheme.secondary,fontSize: 20,fontWeight: FontWeight.w500),),),

            ),
            Expanded(
              child: SizedBox(
                child:
                ListView.builder(
                 itemCount: 7,
                 itemBuilder: (BuildContext context ,int index){
                   //SelectPackageScreen
                  return  SearchCard(onPressed: (){push(context: context, screen: MakeAppointmentScreen());},);
                }) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
