
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:flutter/material.dart';
class MedicineWidget extends StatelessWidget {
  const MedicineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.height,

      decoration: BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(2, 2), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0,right: 8),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 80,
                width: 80,
                decoration:const BoxDecoration(
                    image: DecorationImage(image:
                    NetworkImage("https://img.freepik.com/free-vector/blue-hospital-logo-template_1057-394.jpg?w=740&t=st=1693215593~exp=1693216193~hmac=1e6b452d01ab37b7904245a3d59465abe297958811de46a091082e253126797c"),fit: BoxFit.cover)
                ),

              ),
            ),
            SizedBox(height: 5,),
            Text("1st Cef",style: AppTextStyle(size: 14, fontweight: FontWeight.normal,color: Theme.of(context).colorScheme.secondary)),
            SizedBox(height: 5,),
            Text("500 mg",style:AppTextStyle(size: 10, fontweight: FontWeight.normal,color: textColor2),),
            SizedBox(height: 5,),
            Text("Cefadroxii Monohydrate",style: AppTextStyle(size: 10, fontweight: FontWeight.normal,color: textColor2)),
            SizedBox(height: 5,),
            Text("Price:\$12",style: AppTextStyle(size: 14, fontweight: FontWeight.w700,color: Theme.of(context).colorScheme.secondary)),


          ],
        ),
      ),
    );
  }
}
