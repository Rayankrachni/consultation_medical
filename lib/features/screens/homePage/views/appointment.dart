
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/widgets/cancelled_card_widget.dart';
import 'package:consultation_medical/features/widgets/completed_card_widget.dart';
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
          child: Center(child: Text("My Appointment",style: AppTextStyle(size: 18, fontweight: FontWeight.w600,color: Theme.of(context).colorScheme.secondary)),),

        ),
        bottom: TabBar(


          controller: _tabController,
          tabs: const [
             Padding(
              padding:  EdgeInsets.only(bottom: 10.0),
              child: Text("UpComming",),

            ),
             Padding(
              padding:  EdgeInsets.only(bottom: 10.0),
              child: Text("Completed"),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 10.0),
              child: Text("Cancelled",),
            ),

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TabBarView(
          controller: _tabController,
          children: [

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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context,int index){
      return UpCommingWidget();
    });
  }
}

class Tab2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context,int index){
      return CompleteWidget();
    });
  }
}

class Tab3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context,int index){
      return CancelledWidget();
    });
  }
}
