import 'package:flutter/material.dart';


import 'package:pro1/widgets/headerWidget.dart';
import 'package:pro1/widgets/popularBeaches.dart';
import 'package:pro1/widgets/searchWidget.dart';
import 'package:pro1/widgets/videoWidget.dart';

class DashScreen extends StatefulWidget {
  @override
  _DashScreenState createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;
  bool i = false;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderWidget(
                onclick: () {
                  setState(() {
                    i = !i;
                  });
                },
              ),
              SizedBox(height: 20),
              i
                  ? TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0.0, end: 1.0),
                      duration: Duration(milliseconds: 700),
                      builder: (ctx, v, c) {
                        return Transform.translate(
                            offset: Offset(0, v * 10),
                            child: Opacity(opacity: v, child: c));
                      },
                      child: SearchWidget(),
                    )
                  : Container(
                      height: 1,
                    ),
              SizedBox(height: 20),
              PopularBeaches(),
              SizedBox(height: 20),
              VideoWidget()
            ],
          ),
        ),
      ),
  
    );
  }
}
