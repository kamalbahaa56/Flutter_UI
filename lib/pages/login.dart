import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 115,
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: 180,
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    Text("Login",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,fontFamily: 'myfont'),),
                    SizedBox(
                      height: 25,
                    ),
                    SvgPicture.asset("assets/icons/login.svg"),
                    SizedBox(
                      height: 25,
                    ),
                  // Email
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(66),

                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        width: 350,
                        child: TextField(

                          decoration: InputDecoration(
                            hintText: " Your Email :",
                              icon:Icon(
                                Icons.person,
                                color: Colors.purple[800],

                              ),

                              // suffix: Icon(
                              //   Icons.visibility,
                              //   color: Colors.red,
                              //
                              // ),
                              border: InputBorder.none
                          ),
                        )
                    ),
                  // Password
                    SizedBox(
                      height: 25,
                    ),
                    // Password
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),

                      ),
                      padding: EdgeInsets.symmetric(horizontal:16 ),
                      width: 350,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon:Icon(
                              Icons.lock,
                              color: Colors.purple[800],

                            ),
                            hintText: "Your Password :",
                        border: InputBorder.none
                      ),

                    )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Button
                    MaterialButton(
                      padding:EdgeInsets.symmetric(horizontal: 94,vertical: 15) ,
                      onPressed: (){

                      },
                      child: Text("Login",style: TextStyle(color: Colors.white,fontFamily: "myfont",fontSize:15),),

                      color: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an Account ? "),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, "/SignupScreen");
                          },
                            child: Text(" Sign Up")
                        ),
                      ],
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



/*
obscureText: true,
                    decoration: InputDecoration(
                      suffix: Icon(
                          Icons.visibility,
                        color: Colors.red,
                      ),
                      prefix:  Icon(
                        Icons.lock,
                        color: Colors.red,
                        size: 19,
                      ),
                      hintText: "Passowrd :",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),

                      ),
                    ),
 */