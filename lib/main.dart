import 'package:flutter/material.dart';
import 'package:hilfedienst/view/sflash_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return Sizer(
     builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
     return GetMaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Flutter Demo',

       home:  SflashScreen(),
     );
   },

    );
  }
}

