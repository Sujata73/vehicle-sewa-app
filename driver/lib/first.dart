import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: double.infinity,
      splash: Center(
        child: Container(
          height:300,
          width: 300,
          child:Image.asset('assets/2.jpg',fit: BoxFit.cover,
          ),
        ),
      ),
      nextScreen: Start (),
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: Colors.white,
      duration: 600,
    );
  }
}


class Start extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.orangeAccent,
      body:
      Stack(
        children: [
          Container(
            alignment: Alignment(0, 0.7),
            child : RaisedButton.icon(
              textColor: Colors.black,
              color: Colors.white,
              highlightColor: Colors.orangeAccent.withOpacity(0.13),
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyApp();

              }));
              },

              icon: Icon(Icons.arrow_right, size: 30),
              label: Text("Get started "),
            ),
          ),

          Container(

            alignment: Alignment(0, -2.5),
            child:
            Image.asset('assets/1.png',
            ),
          ),
          Container(

            alignment: Alignment(0, 0.2),
            child:Text(
              'Driver App',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
            ),
          ),
          )

            ],
          )

    );
  }
}


