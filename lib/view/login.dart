import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hilfedienst/app_config.dart';
import 'package:hilfedienst/app_theme.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();
  final pass = TextEditingController();
  final _login = GlobalKey<FormState>();

  late bool _passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    _passwordVisible = false;
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: appColors.mainColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height/7,),
              Image.asset("assets/icons/flash.png", height: 100, width: 100, fit: BoxFit.cover,),
              SizedBox(height: 50,),
              Container(
                width: size.width,
                height: size.height/1.5,
                padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mitarbeiter Login",
                      style: TextStyle(
                        color: appColors.textColor,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Form(
                      key: _login,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: email,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: appColors.grey,
                              contentPadding: EdgeInsets.only(left: 10, right: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              hintText: "User Name",
                              prefixIcon: Container(
                                margin: EdgeInsets.only(left: 2, right: 10, top: 2, bottom: 2),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(2)
                                ),
                                child: Icon(Icons.person_off_rounded, color:  appColors.textColor,),
                              )

                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: pass,
                            obscureText: !_passwordVisible,

                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible ?  Icons.visibility_outlined : Icons.visibility_off_outlined,
                                    color: Colors.grey,
                                  ), onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                                ),
                                filled: true,
                                fillColor: appColors.grey,
                                contentPadding: EdgeInsets.only(left: 10, right: 10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                hintText: "User Name",
                                prefixIcon: Container(
                                  margin: EdgeInsets.only(left: 2, right: 10, top: 2, bottom: 2),
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(2)
                                  ),
                                  child: Icon(Icons.person_off_rounded, color: appColors.textColor,),
                                )

                            ),
                          ),
                          SizedBox(height: 40,),
                          Container(
                            width: size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color: appColors.mainColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Center(
                              child: Text("Sign Up",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

