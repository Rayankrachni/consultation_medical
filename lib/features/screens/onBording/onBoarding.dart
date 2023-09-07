
import 'package:consultation_medical/core/const/strings.dart';
import 'package:consultation_medical/core/helper/app_navigator.dart';
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_size.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:consultation_medical/features/screens/authentication/views/loginScreen.dart';
import 'package:consultation_medical/features/widgets/button_Custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {


  final PageController _pageController = PageController();
  int _currentPage = 0;
  List<String> _titles = ['onBoarding.title1'.tr(), 'onBoarding.title2'.tr(),'onBoarding.title3'.tr()];
  List<String> _imgs = ['assets/images/onBorad1.png', 'assets/images/onBorad2.png','assets/images/onBorad3.png'];
  List<String> _descriptions = [
    "Welcome to our app! Explore the amazing features.",
    "Discover a world of possibilities with our app.",
    "Get started and enjoy the experience."
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _navigateToHome() {
    pushAndRemove(context: context, screen: LoginScreen());
    // Replace this with your navigation logic to the main/home screen
    // For example: Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _titles.length,
                  onPageChanged: _onPageChanged,
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Align(
                              alignment:Alignment.topRight,
                              child: TextButton(onPressed: (){

                                push(context: context, screen: LoginScreen());

                              }, child: Text('Button.skip'.tr(),style: AppTextStyle(size: 14, fontweight: FontWeight.normal,color: primary_Color)))),

                          SizedBox(
                            height: AppSize.height*0.57,
                            width: AppSize.width,
                            child:  Image.asset(_imgs[index]),  ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 10),
                            child: Text(
                              _titles[index],


                              style:AppTextStyle(size: 32, fontweight: FontWeight.bold,color: Theme.of(context).colorScheme.secondary),

                              textAlign: TextAlign.center,
                            ),
                          ),




                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              SizedBox(height:40.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 0),
                child: DefaultButton(
                  isOnboading: true,
                  onPressed:
                    _currentPage == _titles.length - 1 ? _navigateToHome : () => _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease,
                    ),

                  text: _currentPage == _titles.length - 1 ? 'onBoarding.get-started'.tr() : 'Button.next'.tr(),),
              )



            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _titles.length; i++) {
      indicators.add(
        i == _currentPage ? _indicator(true) : _indicator(false),
      );
    }
    return indicators;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 6.0,
      width: isActive ? 30.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? primary_Color :primaryColor3,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
