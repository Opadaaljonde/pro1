import 'package:flutter/material.dart';
import 'package:pro1/components/buttonLoginAnimation.dart';
import 'package:pro1/components/customTextfield.dart';
import 'package:pro1/screens/dashScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img_2.jpg"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter
              )
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back, color: Colors.white,size:32),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                          ),

                        ],
                      ),
                    ),

                  ),
                  Align(
                    
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.slow_motion_video, color: Colors.white,size: 32),
                          Text("32°", style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                          )),
                          Text("Sat, 3 Aug", style: TextStyle(
                              color: Colors.white,
                              fontSize: 12
                          ))
                        ],
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height * 0.70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)
                      )
                    ),
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Welcome",style: TextStyle(
                          color: Color(0xFFF032f42),
                          fontSize: 45,
                          fontFamily: 'Rom',
                          fontWeight: FontWeight.bold
                        )),
                        Text("Sign to continue",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontFamily: 'Rom',
                        )),
                        SizedBox(height: 40),
                        CustomTextField(
                          label: "Email",
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          label: "Password",
                          isPassword: true,
                          icon: Icon(Icons.https, size: 27,color: Color(0xFFF032f41),),
                        ),
                        SizedBox(height: 40),
                        ButtonLoginAnimation(
                          label: "Login",
                          fontColor: Colors.white,
                          background: Color(0xFFF1f94aa),
                          borderColor: Color(0xFFF1a7a8c),
                          child: DashScreen(),
                          key: Key('op'),

                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}