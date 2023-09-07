import 'package:consultation_medical/features/widgets/textField_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/card_hospital_widget.dart';
import '../../../widgets/card_medicine_widget.dart';

class MedicineScreen extends StatelessWidget {
  MedicineScreen({super.key});
  TextEditingController searchController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text('Home.medicine'.tr(),
         style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w700,fontFamily: 'inter'),)),
      body: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20,top: 10,bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(controller: searchController, hintText: 'Home.search-med'.tr(), prefixIcon: CupertinoIcons.search, textInputType: TextInputType.text,hide:true),
            SizedBox(height: 20,),
            Expanded(
              child: SizedBox(
                child:
                GridView.builder(
                    itemCount: 7,
                    itemBuilder: (BuildContext context ,int index){
                      return  MedicineWidget();
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of items per row
                      mainAxisSpacing: 20.0, // Spacing between rows
                      crossAxisSpacing: 20.0, // Spacing between columns
                    ),) ,
              ),
            ),

          ],
        ),
      ),
    );
}
}
