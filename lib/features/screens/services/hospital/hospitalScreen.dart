

import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/widgets/card_hospital_widget.dart';
import 'package:consultation_medical/features/widgets/card_search_widget.dart';
import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HospitalScreen extends StatelessWidget {
  HospitalScreen({super.key});

  TextEditingController searchController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text('Home.hospital'.tr(),
          style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w700,fontFamily: 'inter'),),

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10,bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(controller: searchController, hintText: 'Home.search-hos'.tr(), prefixIcon: CupertinoIcons.search, textInputType: TextInputType.text,hide:true),
            const SizedBox(height: 20,),
            Text('Home.our-hosp'.tr(),style:
             TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:16,fontWeight: FontWeight.w700,fontFamily: 'inter'),),

            const SizedBox(height: 20,),
            Expanded(
              child: SizedBox(
                child:
                ListView.builder(
                    itemCount: 7,
                    itemBuilder: (BuildContext context ,int index){
                      return const HospitalWidgets();
                    }) ,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
