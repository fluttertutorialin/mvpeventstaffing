import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'resource/app_color.dart';
import 'route_navigation/app_module.dart';
import 'route_navigation/route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
            primarySwatch: primarySwatchColor,
            iconTheme: const IconThemeData(color: iconThemeColor),
            textTheme: GoogleFonts.getTextTheme(
                'Poppins',
                const TextTheme(
                    headline6: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                        height: 1.3),
                    headline5: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        height: 1.3),
                    headline4: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        height: 1.3),
                    headline3: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        height: 1.3),
                    headline2: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w700,
                        height: 1.4),
                    headline1: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w300,
                        height: 1.4),
                    subtitle2: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        height: 1.2),
                    subtitle1: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        height: 1.2),
                    bodyText2: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        height: 1.2),
                    bodyText1: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        height: 1.2),
                    caption: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                        height: 1.2)))),
        debugShowCheckedModeBanner: false,
        initialRoute: loginRoute,
        getPages: AppPage.pages);
  }
}
