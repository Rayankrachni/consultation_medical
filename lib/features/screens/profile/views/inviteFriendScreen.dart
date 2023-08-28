

import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/widgets/card_friend_widget.dart';
import 'package:consultation_medical/features/widgets/card_search_widget.dart';
import 'package:flutter/material.dart';

class InviteFriendScreen extends StatelessWidget {
  const InviteFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:     Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(child: Text("Invite Friends",style: TextStyle( color:Theme.of(context).colorScheme.secondary,fontSize: 18,fontWeight: FontWeight.w500),),),

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 20,bottom: 15),
        child: Column(
          children: [

            Expanded(
              child: SizedBox(
                child:
                ListView.builder(
                    itemCount: 7,
                    itemBuilder: (BuildContext context ,int index){
                      return  FriendCardWidgets();
                    }) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
