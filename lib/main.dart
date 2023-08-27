import 'package:consultation_medical/core/helper/theme/app_theme_provider.dart';
import 'package:consultation_medical/core/styles/app_theme.dart';
import 'package:consultation_medical/features/splashScreen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(

      EasyLocalization(
          supportedLocales:const [Locale('en', 'US'),Locale('el', '')],
          path: 'assets/local', // <-- change the path of the translation files
          fallbackLocale:const Locale('en', 'US'),
          saveLocale: true,// Set the initial locale
          child: const MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider appModel =  ThemeProvider();


  @override
  void initState() {
    super.initState();
    _initAppTheme();

  }


  void _initAppTheme() async {
    appModel.darkTheme = await appModel.appPreference.getTheme();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>.value(
        value: appModel,
        child: Consumer<ThemeProvider>(
            builder: (context, value, child) {



              return MaterialApp(
                  title: 'Flutter Demo',
                  debugShowCheckedModeBanner: false,
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  theme: appModel.darkTheme ? buildDarkTheme() : buildLightTheme(context),

                  home:  SplashScreen()
              );})

    );
  }
}

