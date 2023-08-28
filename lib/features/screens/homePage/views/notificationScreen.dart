
import 'package:consultation_medical/features/widgets/notification_widget.dart';
import 'package:flutter/material.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:   Text("Notification",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w500),),
            ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Today",style: TextStyle( color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            NotificationWidget(),
            NotificationWidget(),
            NotificationWidget(),
            SizedBox(height: 10,),
            Text("Yesterday",style: TextStyle( color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            Expanded(
              child: SizedBox(

                child:
                ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context ,int index){
                      return   NotificationWidget();
                    }) ,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
