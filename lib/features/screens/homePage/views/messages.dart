

import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/screens/chatScreen/chatScreen.dart';
import 'package:consultation_medical/features/screens/searchScreen/chatapp.dart';
import 'package:consultation_medical/features/widgets/card_search_widget.dart';
import 'package:consultation_medical/features/widgets/message_search_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../widgets/textField_custom.dart';

class MessagesScreen extends StatelessWidget {
  MessagesScreen({super.key});

  TextEditingController searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 20,bottom: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(child: Text("Message",

                style: AppTextStyle(size: 18, fontweight: FontWeight.w600,color:Theme.of(context).colorScheme.secondary),),

            ),),
            SizedBox(height: 20,),
            TextFormField(
              controller: searchController,

              validator: (value) {
                if (value!.isEmpty) {
                  return 'Toast.empty-field'.tr();
                }
                return null;
              },
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,

              style: TextStyle(color: Theme.of(context).colorScheme.secondary,),

              decoration: InputDecoration(
                hintText: 'Placeholder.search-specialist'.tr(),

                contentPadding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 20.0,
                ),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 20,
                ),

                enabledBorder:const OutlineInputBorder(
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
                    color: placeHolderColor,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(
                      width: 1,
                      color: placeHolderColor
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

            Expanded(
              child: SizedBox(
                child:
                ListView.builder(
                    itemCount: 7,
                    itemBuilder: (BuildContext context ,int index){
                      return  GestureDetector(
                          onTap: (){push(context: context, screen: ChatScreen());},
                          child: MessageCardWidget());
                    }) ,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
