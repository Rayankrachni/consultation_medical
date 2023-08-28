import 'package:consultation_medical/features/widgets/textField_custom.dart';
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
        title:const
        Center(child: Text("Medicine",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10,bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(controller: searchController, hintText: "Search  Medicine", prefixIcon: CupertinoIcons.search, textInputType: TextInputType.text,hide:true),
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
                      mainAxisSpacing: 10.0, // Spacing between rows
                      crossAxisSpacing: 10.0, // Spacing between columns
                    ),) ,
              ),
            ),

          ],
        ),
      ),
    );
}
}
