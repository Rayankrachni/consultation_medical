

import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/screens/chatScreen/chatScreen.dart';
import 'package:consultation_medical/features/widgets/card_search_widget.dart';
import 'package:consultation_medical/features/widgets/message_search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              child: Center(child: Text("Message",style: TextStyle( color:Theme.of(context).colorScheme.secondary,fontSize: 20,fontWeight: FontWeight.w500),),),

            ),
            CustomTextFormField(controller: searchController, hintText: "Search ", prefixIcon: CupertinoIcons.search, textInputType: TextInputType.text,hide:true),

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
