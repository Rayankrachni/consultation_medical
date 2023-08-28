

import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/widgets/card_hospital_widget.dart';
import 'package:consultation_medical/features/widgets/card_search_widget.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HospitalScreen extends StatelessWidget {
  HospitalScreen({super.key});

  TextEditingController searchController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const
        Center(child: Text("Hospital",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10,bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(controller: searchController, hintText: "Search  Doctor", prefixIcon: CupertinoIcons.search, textInputType: TextInputType.text,hide:true),
            SizedBox(height: 20,),
            Text("Our Partner Hospitals",style: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.w500),),
            SizedBox(height: 20,),
            Expanded(
              child: SizedBox(
                child:
                ListView.builder(
                    itemCount: 7,
                    itemBuilder: (BuildContext context ,int index){
                      return  HospitalWidgets();
                    }) ,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
