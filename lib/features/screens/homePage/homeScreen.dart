import 'package:consultation_medical/features/screens/homePage/views/appointment.dart';
import 'package:consultation_medical/features/screens/homePage/views/favorite.dart';
import 'package:consultation_medical/features/screens/homePage/views/home.dart';
import 'package:consultation_medical/features/screens/homePage/views/messages.dart';
import 'package:consultation_medical/features/screens/homePage/views/notificationScreen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Home(),
    AppointmentScreen(),
    MessagesScreen(),
    //NotificationScreen(),
    FavoriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HomePage.home'.tr(),

          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'HomePage.appointment'.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'HomePage.messages'.tr(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'HomePage.favorites'.tr(),

          ),
        ],
      ),
    );
  }
}