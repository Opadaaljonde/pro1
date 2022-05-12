import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:pro1/components/customButtonAnimation.dart';
import 'package:pro1/components/customTextfield.dart';

import 'dashScreen.dart';
import 'loginScreen.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: AssetImage('assets/images/home.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 330,
                height: 410,
                decoration: BoxDecoration(color: Colors.white30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomTextField(
                        label: 'Email',
                        icon: Icon(Icons.email_outlined),
                        isPassword: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        label: 'Password',
                        isPassword: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        label: 'c-password',
                        isPassword: true,
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 40,
                        width: 150,
                        child: CustomButtonAnimation(
                          backbround: Colors.white12,
                          borderColor: Colors.grey,
                          label: "SignUp",
                          child: DashScreen(),
                          fontColor: Colors.black54,
                        ),
                      ),
                     Row(
                       children: [
                         Text('have you account aljondishop?',style: TextStyle(color: Colors.black45,fontSize: 13),),
                         TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>LoginScreen()));}, child:Text('Login',style: TextStyle(color: Colors.blue),))
                       ],
                     ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: ListTile(
                          onTap: (){},
                          title: Text('Register by facebook'),
                          subtitle: Text('have you account facebook?'),
                          trailing:
                             Image.asset('assets/images/facebook.png',fit: BoxFit.fill,),
                          ),
                        ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
