
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/app_colors.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child:   Text("Notification",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:20,fontWeight: FontWeight.w500),),
          ),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 40,
              child: ListTile(
                title:Text("General Notification",style: TextStyle(
                  color:Theme.of(context).colorScheme.secondary,
                  fontSize: 16,
                ),),
                trailing: Switch(onChanged: (v){},value: true,)
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                  title:Text("Notification Sound",style: TextStyle(
                    color:Theme.of(context).colorScheme.secondary,
                    fontSize: 16,
                  ),),
                  trailing: Switch(onChanged: (v){},value: true,)
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                  title:Text("Vibration",style: TextStyle(
                    color:Theme.of(context).colorScheme.secondary,
                    fontSize: 16,
                  ),),
                  trailing: Switch(onChanged: (v){},value: true,)
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                  title:Text("Up update Notification",style: TextStyle(
                    color:Theme.of(context).colorScheme.secondary,
                    fontSize: 16,
                  ),),
                  trailing: Switch(onChanged: (v){},value: true,)
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                  title:Text("Change Notification",style: TextStyle(
                    color:Theme.of(context).colorScheme.secondary,
                    fontSize: 16,
                  ),),
                  trailing: Switch(onChanged: (v){},value: true,)
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                  title:Text("Appointment Alert",style: TextStyle(
                    color:Theme.of(context).colorScheme.secondary,
                    fontSize: 16,
                  ),),
                  trailing: Switch(onChanged: (v){},value: true,)
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                  title:Text("Daily Tips",style: TextStyle(
                    color:Theme.of(context).colorScheme.secondary,
                    fontSize: 16,
                  ),),
                  trailing: Switch(onChanged: (v){},value: true,)
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                  title:Text("New Services",style: TextStyle(
                    color:Theme.of(context).colorScheme.secondary,
                    fontSize: 16,
                  ),),
                  trailing: Switch(
                    inactiveThumbColor: placeHolderColor,
                    inactiveTrackColor: disablebuttonColor,
                    onChanged: (v){},value: false,)
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
