
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../core/const/strings.dart';
import '../../../core/styles/app_colors.dart';
import '../../widgets/diag_review_success-widget.dart';
class WriteReview extends StatelessWidget {
   WriteReview({super.key});

  TextEditingController reviewController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Review.write-review'.tr(),
          style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w700,fontFamily: 'inter'),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            const CircleAvatar(
            radius: 65,
            backgroundImage: NetworkImage("https://as2.ftcdn.net/v2/jpg/02/60/04/09/1000_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg"),
            ),
              SizedBox(height: AppSize.height*0.03),
            SizedBox(
                width: AppSize.width*0.6,
                child: Text("${'Review.review-title'.tr()} Wilson spk ?",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w600,fontFamily: 'inter'),textAlign: TextAlign.center,)),
            SizedBox(height: 10,),
            SizedBox(
              width: AppSize.width*0.5,
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                itemBuilder: (context, _) =>Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: const Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size:20,
                  ),
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            SizedBox(height: AppSize.height*0.04),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Text('Review.review-placeholder'.tr(),style: AppTextStyle(size: 14, fontweight: FontWeight.normal,color: Theme.of(context).colorScheme.secondary)),
                ),
                SizedBox(
                  width: AppSize.width,

                  child: TextFormField(
                    controller: reviewController,

                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Toast.empty-field'.tr();
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    maxLines: 7,
                    style: TextStyle(color: Theme.of(context).colorScheme.secondary,),


                    decoration: InputDecoration(
                      hintText:'Review.write-here'.tr(),


                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 20.0,
                      ),


                      enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          width: 1,
                          color: placeHolderColor,
                        ),
                      ),
                      focusedErrorBorder:const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:  BorderSide(
                          width: 1,
                          color: Colors.red,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          width: 1,
                          color: placeHolderColor,
                        ),
                      ),
                      errorBorder:const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10),),
                        borderSide:  BorderSide(
                          width: 1,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
              SizedBox(height: AppSize.height*0.04),
              SizedBox(
                width: AppSize.width,
                height: 60,
                child: ElevatedButton(onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SuccessReviewDialog();
                      //WrongDialog();

                      // SuccessDialog();
                    },
                  );
                },

                    style: ElevatedButton.styleFrom(
                      primary: primary_Color, // Set the button's background color
                      onPrimary: Colors.white,
                      elevation: 1, // Set the elevation (shadow) of the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Set the border radius
                      ),
                      // Set the minimum width and height
                      // Add more properties as needed, e.g., padding, textStyle, etc.
                    ),

                    child:  Text( 'Button.submit'.tr(),style: TextStyle(fontSize: 14,fontFamily: regularfontFamilyName),)),
              ),
              SizedBox(height: AppSize.height*0.03),
              SizedBox(
                width: AppSize.width,
                height: 60,
                child: ElevatedButton(onPressed: (){},

                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).cardColor, // Set the button's background color
                      onPrimary: Theme.of(context).colorScheme.secondary,
                      elevation: 1,

                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: primary_Color),
                        borderRadius: BorderRadius.circular(10), // Set the border radius
                      ),
                      // Set the minimum width and height
                      // Add more properties as needed, e.g., padding, textStyle, etc.
                    ),

                    child: Text( 'Button.cancel'.tr(),style: TextStyle(fontSize: 14,fontFamily: regularfontFamilyName),)),

              ),


            ],
          ),
        ),
      ),
    );
  }
}
