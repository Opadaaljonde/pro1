import 'package:flutter/material.dart';

import 'package:pro1/components/customButton.dart';
import 'package:pro1/components/customButtonAnimation.dart';
import 'package:pro1/screens/loginScreen.dart';
import 'package:pro1/screens/signup.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/images/home.jpg", fit: BoxFit.cover),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xFFF001117).withOpacity(0.7),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.only(top: 80, bottom: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TweenAnimationBuilder(

                  builder: (ctx,value,child){
                    return Transform.translate(offset:Offset(value,0),child: child,);
                  },
                  tween: Tween<double>(begin: -30,end: 15 ),
                  duration: Duration(milliseconds: 700),
                  child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

             Text("Best waves for", style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  letterSpacing: 2
                )
             ),

               Text(".surfing", style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                )),
                  ],
                ),),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                      TweenAnimationBuilder(

                    builder: (ctx,value,child){
                      return Transform.translate(
                        offset: Offset(0,value*15),
                          child: Opacity(opacity: value,child: child,));
                    },
                        tween: Tween<double>(begin: 0.0,end: 1.0),
                        duration: Duration(milliseconds: 700),
                        child:  CustomButtonAnimation(
                          label: "Sign up",
                          backbround: Colors.white.withOpacity(0.1),
                          fontColor: Colors.white,
                          borderColor: Colors.white,
                          child:Signup(),
                        ),
                ),



                    SizedBox(height: 20),
                    TweenAnimationBuilder(

                      builder: (ctx,value,child){
                        return Transform.translate(
                            offset: Offset(0,value*15),
                            child: Opacity(opacity: value,child: child,));
                      },
                      tween: Tween<double>(begin: 0.0,end: 1.0),
                      duration: Duration(milliseconds: 700),
                      child:CustomButtonAnimation(
                      label: "Sign In",
                      backbround: Colors.white,
                      borderColor: Colors.white,
                      fontColor: Color(0xFFF001117),
                      child: LoginScreen(),
                    ),
                    ),

                    SizedBox(height: 30),
                   Text("Forgot password", style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      decoration: TextDecoration.underline
                    ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}