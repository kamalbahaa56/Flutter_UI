import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                  child: Image.asset("assets/images/main_top.png",width: 115,),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset("assets/images/main_bottom.png",width: 100,),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text("Welcome",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,fontFamily: 'myfont'),),
                    SizedBox(
                      height: 30,
                    ),
                    SvgPicture.asset("assets/icons/chat.svg"),
                    // Login Button
                    MaterialButton(
                      padding:EdgeInsets.symmetric(horizontal: 100,vertical: 15) ,
                        onPressed: (){
                        Navigator.pushNamed(context, '/LoginScreen');
                        },
                      child: Text("Login",style: TextStyle(color: Colors.white),),

                      color: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // SIGNUP BUTTON
                    MaterialButton(
                      padding:EdgeInsets.symmetric(horizontal: 94,vertical: 15) ,
                      onPressed: (){
                        Navigator.pushNamed(context, '/SignupScreen');
                      },
                      child: Text("SIGNUP",style: TextStyle(color: Colors.grey[850]),),

                      color: Colors.purple[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
