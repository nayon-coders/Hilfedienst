import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hilfedienst/app_config.dart';
import 'package:hilfedienst/app_theme.dart';
import 'package:hilfedienst/view/login.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class SflashScreen extends StatefulWidget {
  const SflashScreen({Key? key}) : super(key: key);

  @override
  State<SflashScreen> createState() => _SflashScreenState();
}

class _SflashScreenState extends State<SflashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 3000)).then((value) => Get.to(Login(), transition: Transition.zoom, duration: Duration(milliseconds: 1500)));
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: appColors.mainColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset("assets/icons/flash.png", height: 100, width: 100,),
            SizedBox(height: 20,),
            Container(
              width: size.width,
              height: 100,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Horizon',
                ),
                child: AnimatedTextKit(

                  pause: Duration(seconds: 3),
                  onFinished: (){
                    print("object");
                  },
                  //isRepeatingAnimation: false,
                  animatedTexts: [
                    RotateAnimatedText(" ${AppConfig.appName} "),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
