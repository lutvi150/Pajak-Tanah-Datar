import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pajak_tanah_datar/pajak_detail_page.dart';
import 'package:pajak_tanah_datar/pajak_page.dart';
import 'package:pajak_tanah_datar/splah_page.dart';

final List<GetPage<dynamic>> pages = [
  GetPage(name: '/', page: () => SplashPage()),
  GetPage(name: '/login', page: () => LoginPage()),
  GetPage(name: '/pajak', page: () => PajakPage(Get.arguments)),
  GetPage(name: '/pajakDetail', page: () => PajakDetailPage()),
];
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pajak Tanah Datar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            textStyle: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            primary: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(width: 1, color: Colors.blue),
          ),
          contentPadding: EdgeInsets.all(8),
          labelStyle: GoogleFonts.poppins(
            fontSize: 13,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          TextTheme(
            headline1: TextStyle(fontSize: 21, color: Colors.black),
            bodyText1: TextStyle(fontSize: 14, color: Colors.black),
            bodyText2: TextStyle(fontSize: 13, color: Colors.black),
          ),
        ),
      ),
      unknownRoute: pages[0],
      initialRoute: '/',
      getPages: pages,
    );
  }
}
