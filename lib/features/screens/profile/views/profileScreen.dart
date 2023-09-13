

import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/features/screens/profile/views/changePassword.dart';
import 'package:consultation_medical/features/screens/profile/views/editProfile.dart';
import 'package:consultation_medical/features/screens/profile/views/inviteFriendScreen.dart';
import 'package:consultation_medical/features/screens/profile/views/notificationSettingsScreen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile.my-profile'.tr(),
        style:  TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w700,fontFamily: 'inter'),),
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
                  backgroundImage:const NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
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
                              padding: const EdgeInsets.only(right: 20),
                              child: IconButton(icon:const Icon(Icons.edit,size: 15,),onPressed: (){},)),
                        )
                    ),
                  ),
                ),    const SizedBox(height: 10,),
                Text("User Full Name",style:  TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.bold,fontFamily: 'inter'),),

                const SizedBox(height: 10,),
                const Text("+213 540060592",style: TextStyle(
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
                        child: Text('Profile.account-setting'.tr(),
                          style:  TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.w700,fontFamily: 'inter'),),

                      ),
                       GestureDetector(
                         onTap: (){push(context: context, screen: const EditProfile());},
                         child: SizedBox(
                           height: 40,
                           child: ListTile(
                            title:Text('Profile.edit-prof'.tr(),
                              style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.normal,fontFamily: 'inter'),),

                             leading: Icon(CupertinoIcons.person,color:Theme.of(context).colorScheme.secondary,size: 25,),
                            trailing: Icon(Icons.arrow_forward_ios,size: 14,color:Theme.of(context).colorScheme.secondary,),
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
                            title:Text('Profile.change-pswd'.tr(),
                                style:TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.normal,fontFamily: 'inter')),
                            leading: Icon(CupertinoIcons.padlock,color:Theme.of(context).colorScheme.secondary,size: 25,),
                            trailing: Icon(Icons.arrow_forward_ios,size: 16,color:Theme.of(context).colorScheme.secondary,),
                      ),
                         ),
                       ),
                      const Divider(
                        color: placeHolderColor,
                      ),
                      GestureDetector(
                        onTap: (){push(context: context, screen: const NotificationSetting());},
                        child: SizedBox(
                          height: 40,
                          child: ListTile(
                            title:Text('Home.notification'.tr(),
                                style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.normal,fontFamily: 'inter')),
                            leading: Icon(Icons.notifications_none,color:Theme.of(context).colorScheme.secondary,size: 25,),
                            trailing: Icon(Icons.arrow_forward_ios,size: 16,color:Theme.of(context).colorScheme.secondary,),
                          ),
                        ),
                      ),
                      const Divider(
                        color: placeHolderColor,
                      ),
                       GestureDetector(
                         onTap: (){push(context: context, screen:const InviteFriendScreen());},
                         child: SizedBox(
                           height: 40,
                           child: ListTile(
                            title:Text('Profile.inv-friend'.tr(),
                                style:TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.normal,fontFamily: 'inter')),
                            leading: Icon(CupertinoIcons.person_2,color:Theme.of(context).colorScheme.secondary,size: 25,),
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
                          title:Text('Profile.language'.tr(),
                              style:TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.normal,fontFamily: 'inter')),
                          leading: Icon(Icons.language,color:Theme.of(context).colorScheme.secondary,size: 25,),
                          trailing: Icon(Icons.arrow_forward_ios,size: 16,color:Theme.of(context).colorScheme.secondary,),
                        ),
                      ),
                      const Divider(
                        color: placeHolderColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10,bottom: 10),
                        child: Text("About Us",
                          style:  TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.w700,fontFamily: 'inter'),),
                      ),
                      SizedBox(
                        height: 40,
                        child: ListTile(
                          title:Text('Profile.privacy-policy'.tr(),
                              style:TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.normal,fontFamily: 'inter')),
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
                          title:Text('Profile.contact-us'.tr(),
                              style:TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:14,fontWeight: FontWeight.normal,fontFamily: 'inter')),
                          leading: Icon(CupertinoIcons.padlock,color:Theme.of(context).colorScheme.secondary,size: 25,),
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
