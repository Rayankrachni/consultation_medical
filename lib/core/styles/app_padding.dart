import 'package:flutter/cupertino.dart';
import 'app_size.dart';

class AppPadding {
  /// padding horizontal and vertical 007
  static EdgeInsets padding007 = EdgeInsets.symmetric(
    vertical: AppSize.width * 0.07,
    horizontal: AppSize.width * 0.07,
  );


  /// padding horizontal 01
  static EdgeInsets paddingV001 = EdgeInsets.symmetric(
    horizontal: AppSize.width * 0.02,
  );

  static EdgeInsets padding001 = EdgeInsets.symmetric(
    horizontal: AppSize.width * 0.025,
    vertical: AppSize.width * 0.02,
  );

  static EdgeInsets symmetricPadding60 =  EdgeInsets.symmetric(horizontal: AppSize.width * 0.06, vertical: AppSize.height * 0.06);
  static EdgeInsets symmetricPadding30 =  EdgeInsets.symmetric(horizontal: AppSize.width * 0.06, vertical: AppSize.height * 0.03);
  static EdgeInsets symmetricPadding20 =  EdgeInsets.symmetric(horizontal: AppSize.width * 0.02, vertical: AppSize.height * 0.02);
  static EdgeInsets symmetricPadding10 =  EdgeInsets.symmetric(vertical: AppSize.height * 0.01, horizontal:  AppSize.width * 0.01);
  static EdgeInsets symmetricverticalPadding20 =  EdgeInsets.symmetric( vertical: AppSize.height * 0.02);
  static EdgeInsets symmetricVerticalPadding30 =  EdgeInsets.symmetric( vertical: AppSize.height * 0.03);
  static EdgeInsets symmetricVerticalPadding10 =  EdgeInsets.symmetric( vertical: AppSize.height * 0.01);

  static EdgeInsets symmetricPadding =  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10);
  static EdgeInsets margin =  const EdgeInsets.all(8.0);
  static EdgeInsets margin28 =  const EdgeInsets.only(left: 10.0);
  static EdgeInsets margin20 =  EdgeInsets.only(left: AppSize.width*0.065,bottom: 40);
  static EdgeInsets marginLeft =   EdgeInsets.only(left: AppSize.width*0.06,bottom:20 );
  static EdgeInsets margin15 =  const EdgeInsets.all(15.0);

}