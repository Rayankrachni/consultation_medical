

import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/widgets/card_search_widget.dart';
import 'package:flutter/material.dart';

class AvailableDoctorScreen extends StatelessWidget {
  const AvailableDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("Available Doctors",
          style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w700,fontFamily: 'inter'),)),


      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 20,bottom: 0),
        child: SizedBox(
          child:
          ListView.builder(
              itemCount: 7,
              itemBuilder: (BuildContext context ,int index){
                return  SearchCard(onPressed: (){},);
              }) ,
        ),
      ),
    );
  }
}
