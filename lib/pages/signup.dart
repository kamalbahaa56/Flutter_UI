import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                  "assets/images/signup_top.png",
                  width: 115,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset("assets/images/main_bottom.png",height: 100,),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    Text("signup",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,fontFamily: 'myfont'),),
                    SizedBox(
                      height: 25,
                    ),
                    SvgPicture.asset("assets/icons/signup.svg",height: 200,),
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
                        width: 300,
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
                        width: 300,
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
                      child: Text("signup",style: TextStyle(color: Colors.white,fontFamily: "myfont",fontSize:15),),

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
                        Text("Already have an Account ? "),
                        GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, "/LoginScreen");
                            },
                            child: Text(" Login")
                        ),
                        SizedBox(
                          height: 20,
                        ),




                      ],

                    ),

                  SizedBox(height: 20,),

                // Size Box Divider
                    SizedBox(
                      width: 300,
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              height: 20,
                              thickness: 1,
                              color: Colors.purple,
                            ),
                          ),
                          Text("OR"),
                          Expanded(
                            child: Divider(
                              height: 20,
                              thickness: 1,
                              color: Colors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    // Icons FaceBook Twtiter google
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // facebook
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple,),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width:50,
                            height: 50,
                            child: SvgPicture.asset("assets/icons/facebook.svg",color: Colors.purple,),
                            padding: EdgeInsets.all(10),
                          ),
                          // twitter
                          Container(
                            child: SvgPicture.asset("assets/icons/twitter.svg",color: Colors.purple,),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple,),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(10),
                          ),
                          // Google
                          Container(
                            child: SvgPicture.asset("assets/icons/google-plus.svg",color: Colors.purple,),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple,),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(10),
                          ),
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
