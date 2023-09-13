
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/widgets/cancelled_card_widget.dart';
import 'package:consultation_medical/features/widgets/completed_card_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../widgets/upComming_widget.dart';

class AppointmentScreen extends StatefulWidget {
  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        title:    Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(child: Text('HomePage.my-appointment'.tr(),style: AppTextStyle(size: 18, fontweight: FontWeight.w600,color: Theme.of(context).colorScheme.secondary)),),

        ),
        bottom: TabBar(


          controller: _tabController,
          tabs:  [
             Padding(
              padding:const  EdgeInsets.only(bottom: 10.0),
              child: Text('HomePage.upComing'.tr(),),

            ),
             Padding(
              padding:const  EdgeInsets.only(bottom: 10.0),
              child: Text('HomePage.completed'.tr(),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text('HomePage.cancelled'.tr(),),
            ),

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TabBarView(
          controller: _tabController,
          children: const [

            Tab1Screen(),
            Tab2Screen(),
            Tab3Screen(),
          ],
        ),
      ),
    );
  }
}

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context,int index){
      return const UpComingWidget();
    });
  }
}

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context,int index){
      return CompleteWidget();
    });
  }
}

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context,int index){
      return const CancelledWidget();
    });
  }
}
