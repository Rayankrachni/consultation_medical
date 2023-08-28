

import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/screens/profile/views/changePassword.dart';
import 'package:consultation_medical/features/screens/profile/views/editProfile.dart';
import 'package:consultation_medical/features/screens/profile/views/inviteFriendScreen.dart';
import 'package:consultation_medical/features/screens/profile/views/notificationSettingsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:   Text("My Profile",style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w500),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                  child: Padding(
                    padding:  const EdgeInsets.all(5.0),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(

                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).primaryColor
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: IconButton(icon:const Icon(Icons.edit,size: 15,),onPressed: (){},)),
                        )
                    ),
                  ),
                ),    SizedBox(height: 10,),
                Text("User Full Name",style: TextStyle(
                    color:Theme.of(context).colorScheme.secondary,
                    fontSize: 16,fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 5,),
                Text("Good Morning 👋",style: TextStyle(
                    color: textColor2,
                    fontSize: 12,
                    fontFamily: regularfontFamilyName
                ),),
                SizedBox(height: AppSize.height*0.03,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10,bottom: 10),
                        child: Text("Account Settings",style: TextStyle(
                            color:Theme.of(context).colorScheme.secondary,
                            fontSize: 16,fontWeight: FontWeight.w500
                        ),),
                      ),
                       GestureDetector(
                         onTap: (){push(context: context, screen: EditProfile());},
                         child: SizedBox(
                           height: 40,
                           child: ListTile(
                            title:Text("Edit Profile",style: TextStyle(
                                color:Theme.of(context).colorScheme.secondary,
                                fontSize: 14,
                            ),),
                            leading: Icon(CupertinoIcons.person,color:Theme.of(context).colorScheme.secondary,size: 22,),
                            trailing: Icon(Icons.arrow_forward_ios,size: 16,color:Theme.of(context).colorScheme.secondary,),
                      ),
                         ),
                       ),
                       const Divider(
                        color: placeHolderColor,
                      ),
                       GestureDetector(
                         onTap: (){push(context: context, screen: ChangePassword());},
                         child: SizedBox(
                           height: 40,
                           child: ListTile(
                            title:Text("Change Password",style: TextStyle(
                              color:Theme.of(context).colorScheme.secondary,
                              fontSize: 14,
                            ),),
                            leading: Icon(CupertinoIcons.padlock,color:Theme.of(context).colorScheme.secondary,size: 20,),
                            trailing: Icon(Icons.arrow_forward_ios,size: 16,color:Theme.of(context).colorScheme.secondary,),
                      ),
                         ),
                       ),
                      const Divider(
                        color: placeHolderColor,
                      ),
                      GestureDetector(
                        onTap: (){push(context: context, screen: NotificationSetting());},
                        child: SizedBox(
                          height: 40,
                          child: ListTile(
                            title:Text("Notification",style: TextStyle(
                              color:Theme.of(context).colorScheme.secondary,
                              fontSize: 14,
                            ),),
                            leading: Icon(Icons.notifications_none,color:Theme.of(context).colorScheme.secondary,size: 22,),
                            trailing: Icon(Icons.arrow_forward_ios,size: 16,color:Theme.of(context).colorScheme.secondary,),
                          ),
                        ),
                      ),
                      const Divider(
                        color: placeHolderColor,
                      ),
                       GestureDetector(
                         onTap: (){push(context: context, screen: InviteFriendScreen());},
                         child: SizedBox(
                           height: 40,
                           child: ListTile(
                            title:Text("Invite Friends",style: TextStyle(
                              color:Theme.of(context).colorScheme.secondary,
                              fontSize: 14,
                            ),),
                            leading: Icon(CupertinoIcons.person_2_alt,color:Theme.of(context).colorScheme.secondary,size: 22,),
                            trailing: Icon(Icons.arrow_forward_ios,size: 16,color:Theme.of(context).colorScheme.secondary,),
                      ),
                         ),
                       ),
                      const Divider(
                        color: placeHolderColor,
                      ),
                      SizedBox(
                        height: 40,
                        child: ListTile(
                          title:Text("Language",style: TextStyle(
                            color:Theme.of(context).colorScheme.secondary,
                            fontSize: 14,
                          ),),
                          leading: Icon(Icons.language,color:Theme.of(context).colorScheme.secondary,size: 22,),
                          trailing: Icon(Icons.arrow_forward_ios,size: 16,color:Theme.of(context).colorScheme.secondary,),
                        ),
                      ),
                      const Divider(
                        color: placeHolderColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10,bottom: 10),
                        child: Text("About Us",style: TextStyle(
                            color:Theme.of(context).colorScheme.secondary,
                            fontSize: 16,fontWeight: FontWeight.w500
                        ),),
                      ),
                      SizedBox(
                        height: 40,
                        child: ListTile(
                          title:Text("Privacy Policy",style: TextStyle(
                            color:Theme.of(context).colorScheme.secondary,
                            fontSize: 14,
                          ),),
                          leading: Icon(Icons.privacy_tip_outlined,color:Theme.of(context).colorScheme.secondary,size: 22,),
                          trailing: Icon(Icons.arrow_forward_ios,size: 16,color:Theme.of(context).colorScheme.secondary,),
                        ),
                      ),
                      const Divider(
                        color: placeHolderColor,
                      ),
                      SizedBox(
                        height: 40,
                        child: ListTile(
                          title:Text("Contact Us",style: TextStyle(
                            color:Theme.of(context).colorScheme.secondary,
                            fontSize: 14,
                          ),),
                          leading: Icon(CupertinoIcons.padlock,color:Theme.of(context).colorScheme.secondary,),
                          trailing: Icon(Icons.arrow_forward_ios,size: 16,color:Theme.of(context).colorScheme.secondary,),
                        ),
                      ),
                    ],
                  ),
                )




              ],
            ),
          ),
        ),
      ),
    );
  }
}
