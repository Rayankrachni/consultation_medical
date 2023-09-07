
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/app_colors.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          centerTitle: true,
          title: Text("Notification",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w700,fontFamily: "inter"),),
        ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 50,
              child: ListTile(
                title:Text("General Notification",style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  )),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: Switch(

                      inactiveThumbColor: placeHolderColor,
                      inactiveTrackColor: disablebuttonColor,
                      activeTrackColor: Colors.blue,
                      activeColor: Colors.white,

                      onChanged: (v){},value: true,),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text("Notification Sound",style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing: Transform.scale(
                    scale: 0.8,
                    child: Switch(

                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: placeHolderColor,
                      activeTrackColor: Colors.blue,
                      activeColor: Colors.white,

                      onChanged: (v){},value: false,),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text("Vibration",style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child:Switch(

                      inactiveThumbColor: placeHolderColor,
                      inactiveTrackColor: disablebuttonColor,
                      activeTrackColor: Colors.blue,
                      activeColor: Colors.white,

                      onChanged: (v){},value: true,),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text("Up update Notification",style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: Switch(

                      inactiveThumbColor: placeHolderColor,
                      inactiveTrackColor: disablebuttonColor,
                      activeTrackColor: Colors.blue,
                      activeColor: Colors.white,

                      onChanged: (v){},value: true,),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text("Change Notification",style:  AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: Switch(

                      inactiveThumbColor: placeHolderColor,
                      inactiveTrackColor: disablebuttonColor,
                      activeTrackColor: Colors.blue,
                      activeColor: Colors.white,

                      onChanged: (v){},value: true,),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text("Appointment Alert",style:  AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child:Switch(

                      inactiveThumbColor: placeHolderColor,
                      inactiveTrackColor: disablebuttonColor,
                      activeTrackColor: Colors.blue,
                      activeColor: Colors.white,

                      onChanged: (v){},value: true,),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text("Daily Tips",style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: Switch(

                      inactiveThumbColor: placeHolderColor,
                      inactiveTrackColor: disablebuttonColor,
                      activeTrackColor: Colors.blue,
                      activeColor: Colors.white,

                      onChanged: (v){},value: true,),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text("New Services",style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing: Transform.scale(
                    scale: 0.7,
                    child: Switch(
                      
                      inactiveThumbColor: placeHolderColor,
                      inactiveTrackColor: disablebuttonColor,
                      activeTrackColor: Colors.blue,
                      activeColor: Colors.white,

                      onChanged: (v){},value: true,),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),


          ],
        ),
      )
    );
  }
}
