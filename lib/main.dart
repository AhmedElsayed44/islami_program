import 'package:flutter/material.dart';
import 'package:newflutter/home/hades/hades_ditals_screen.dart';
import 'package:newflutter/home/quran/sura_ditals_screen.dart';
import 'package:newflutter/homescreen.dart';

void main() {
  runApp(MyApp());
}

class mythemdata{
  static const Color primaryColor =Color.fromARGB(255, 183, 147, 95);
  static final ThemeData lightThem =ThemeData (primaryColor: mythemdata.primaryColor,

      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black
          )
      ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white
    )
  );
  static final ThemeData darkThem =ThemeData (primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.transparent,

      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,fontSize: 30,
          )
      )
  );
}
class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(



      title: 'islami',
        theme:mythemdata.lightThem,
      darkTheme:mythemdata.darkThem,

      routes: {
        homescreen.routeName:(buildcontext)=>homescreen(),
        suraditals.routName:(buildcontext)=>suraditals(),
        hadesditals.routName:(buildcontext)=>hadesditals(),
      },
      initialRoute: homescreen.routeName,

    );
  }
}
