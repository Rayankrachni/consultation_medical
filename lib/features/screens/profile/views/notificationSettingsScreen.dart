
import 'package:consultation_medical/core/helper/theme/app_theme_provider.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/styles/app_colors.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({super.key});

  @override
  Widget build(BuildContext context) {

    ThemeProvider provider=Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(

          centerTitle: true,
          title: Text('Home.notification'.tr(),style: TextStyle(color:Theme.of(context).colorScheme.secondary,fontSize:18,fontWeight: FontWeight.w700,fontFamily: "inter"),),
        ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                provider.darkTheme=!provider.darkTheme;
              },
              child: SizedBox(
                height: 50,
                child: ListTile(
                    title:Text('Home.theme-mode'.tr(),style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                    )),
                    trailing: Theme(
                      data: Theme.of(context).copyWith(
                        useMaterial3: true,
                        colorScheme: Theme.of(context).colorScheme.copyWith(
                          onBackground: Colors.red, // <---- same change as in global
                        ),
                      ),
                      child: Transform.scale(
                        scale: 0.7,
                        child: Switch(

                          inactiveThumbColor: placeHolderColor,
                          inactiveTrackColor: disablebuttonColor,
                          activeTrackColor: Colors.blue,
                          activeColor: Colors.white,

                          onChanged: (v){
                            provider.darkTheme=!provider.darkTheme;
                            v=!provider.darkTheme;
                          },value: provider.darkTheme,),
                      ),
                    )
                ),
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                title:Text('Home.general-notification'.tr(),style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  )),
                  trailing: Theme(
                    data: Theme.of(context).copyWith(
                      useMaterial3: true,
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                        onBackground: Colors.red, // <---- same change as in global
                      ),
                    ),
                    child: Transform.scale(
                      scale: 0.7,
                      child: Switch(

                        inactiveThumbColor: placeHolderColor,
                        inactiveTrackColor: disablebuttonColor,
                        activeTrackColor: Colors.blue,
                        activeColor: Colors.white,

                        onChanged: (v){},value: true,),
                    ),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text('Home.not-sound'.tr(),style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing: Theme(
                    data: Theme.of(context).copyWith(
                      useMaterial3: true,
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                        onBackground: Colors.red, // <---- same change as in global
                      ),
                    ),
                    child: Transform.scale(
                      scale: 0.8,
                      child: Switch(

                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: placeHolderColor,
                        activeTrackColor: Colors.blue,
                        activeColor: Colors.white,

                        onChanged: (v){},value: false,),
                    ),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text('Home.vibration'.tr(),style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing:Theme(
                    data: Theme.of(context).copyWith(
                      useMaterial3: true,
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                        onBackground: Colors.red, // <---- same change as in global
                      ),
                    ),
                    child: Transform.scale(
                      scale: 0.7,
                      child:Switch(

                        inactiveThumbColor: placeHolderColor,
                        inactiveTrackColor: disablebuttonColor,
                        activeTrackColor: Colors.blue,
                        activeColor: Colors.white,

                        onChanged: (v){},value: true,),
                    ),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text('Home.update'.tr(),style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing: Theme(
                    data: Theme.of(context).copyWith(
                      useMaterial3: true,
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                        onBackground: Colors.red, // <---- same change as in global
                      ),
                    ),
                    child: Transform.scale(
                      scale: 0.7,
                      child: Switch(

                        inactiveThumbColor: placeHolderColor,
                        inactiveTrackColor: disablebuttonColor,
                        activeTrackColor: Colors.blue,
                        activeColor: Colors.white,

                        onChanged: (v){},value: true,),
                    ),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text('Home.change-not'.tr(),style:  AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing:Theme(
                    data: Theme.of(context).copyWith(
                      useMaterial3: true,
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                        onBackground: Colors.red, // <---- same change as in global
                      ),
                    ),
                    child: Transform.scale(
                      scale: 0.7,
                      child: Switch(

                        inactiveThumbColor: placeHolderColor,
                        inactiveTrackColor: disablebuttonColor,
                        activeTrackColor: Colors.blue,
                        activeColor: Colors.white,

                        onChanged: (v){},value: true,),
                    ),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text('Home.app-alert'.tr(),style:  AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing: Theme(
                    data: Theme.of(context).copyWith(
                      useMaterial3: true,
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                        onBackground: Colors.red, // <---- same change as in global
                      ),
                    ),
                    child: Transform.scale(
                      scale: 0.7,
                      child:Switch(

                        inactiveThumbColor: placeHolderColor,
                        inactiveTrackColor: disablebuttonColor,
                        activeTrackColor: Colors.blue,
                        activeColor: Colors.white,

                        onChanged: (v){},value: true,),
                    ),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text('Home.tips'.tr(),style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing: Theme(
                    data: Theme.of(context).copyWith(
                      useMaterial3: true,
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                        onBackground: Colors.red, // <---- same change as in global
                      ),
                    ),
                    child: Transform.scale(
                      scale: 0.7,
                      child: Switch(

                        inactiveThumbColor: placeHolderColor,
                        inactiveTrackColor: disablebuttonColor,
                        activeTrackColor: Colors.blue,
                        activeColor: Colors.white,

                        onChanged: (v){},value: true,),
                    ),
                  )
              ),
            ),
            const Divider(
              color: placeHolderColor,
            ),
            SizedBox(
              height: 50,
              child: ListTile(
                  title:Text('Home.new-services'.tr(),style: AppTextStyle(size: 16, fontweight: FontWeight.normal,color:Theme.of(context).colorScheme.secondary,
                  ),),
                  trailing: Theme(
                    data: Theme.of(context).copyWith(
                      useMaterial3: true,
                      colorScheme: Theme.of(context).colorScheme.copyWith(
                        onBackground: Colors.red, // <---- same change as in global
                      ),
                    ),
                    child: Transform.scale(
                      scale: 0.7,
                      child: Switch(

                        inactiveThumbColor: placeHolderColor,
                        inactiveTrackColor: disablebuttonColor,
                        activeTrackColor: Colors.blue,
                        activeColor: Colors.white,

                        onChanged: (v){},value: true,),
                    ),
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
