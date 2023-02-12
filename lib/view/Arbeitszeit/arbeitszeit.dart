import 'package:flutter/material.dart';
import 'package:hilfedienst/app_theme.dart';
import 'package:hilfedienst/view_controller/title_text.dart';

class Arbeitszeit extends StatefulWidget {
  const Arbeitszeit({Key? key}) : super(key: key);

  @override
  State<Arbeitszeit> createState() => _ArbeitszeitState();
}

class _ArbeitszeitState extends State<Arbeitszeit> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              TitleText(text: "Meine Arbeitszeit"),
              SizedBox(height: 20,),
              Container(
                width: size.width,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: appColors.white,
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0,2),
                        color: appColors.grey
                    )
                  ],
                ),
                child: Column(
                  children: [
                    buildAlignText(size, "Today", "Thu, 29 Sep 2022"),
                    SizedBox(height: 20,),
                    buildAlignText(size, "Time", "9:00 PM"),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              TitleText(text: "Select Patient"),
              SizedBox(height: 20,),
              Container(
                color: Color(0xFFEFF2F7),
                child: ListTile(
                  title: Text("Patient name", style: TextStyle(fontSize: 17),),
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: appColors.white,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.person, color: appColors.black,),
                  ),
                  trailing: Icon(Icons.arrow_drop_down_outlined, color: appColors.black,),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  Padding buildAlignText(Size size, String title, String subTitle,) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: size.width/2.5,
            child: Text("$title",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16
              ),
            ),
          ),
          SizedBox(
            width: size.width/3,
            child: Text("$subTitle",
              overflow: TextOverflow.clip,
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15
              ),
            ),
          ),
        ],
      ),
    );
  }


}
