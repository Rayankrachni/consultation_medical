
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/widgets/notification_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home.notification'.tr(),
          style: AppTextStyle(size: 18, fontweight: FontWeight.w600,color:Theme.of(context).colorScheme.secondary),),
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 15.0,left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Home.today'.tr(),style: AppTextStyle(size: 16, fontweight: FontWeight.w700,color:Theme.of(context).colorScheme.secondary)),
              const SizedBox(height: 10,),
              const NotificationWidget(),
              const NotificationWidget(),
              const NotificationWidget(),
              const SizedBox(height: 10,),
              Text('Home.yesterday'.tr(),style:AppTextStyle(size: 16, fontweight: FontWeight.w700,color:Theme.of(context).colorScheme.secondary)),
              SizedBox(height: 10,),
              NotificationWidget(),
              NotificationWidget(),
              NotificationWidget(),
              NotificationWidget(),
              NotificationWidget(),
              NotificationWidget(),


            ],
          ),
        ),
      ),
    );
  }
}
