import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:weatherapp_starter_project/screens/login_screen.dart';
import 'package:weatherapp_starter_project/screens/signup_screen.dart';
import 'package:weatherapp_starter_project/utils/custom_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage('assets/icons/windspeed.png'), height: height *0.5,),
            Column(
              children: [
                Text("Welcome", style: TextStyle(
                  fontFamily: 'PoppinsBold',
                  fontSize: 20,
                ),),
                SizedBox(
                  height: 10,
                ),
                Text("Weather App for Stemm One CloudWorks", textAlign: TextAlign.center,
                style  : TextStyle(
                  fontFamily: 'PoppinsMedium',
                  fontSize: 16,
  
                ),),
              ],
            ),
            
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return LoginScreen();
                },
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  var begin = Offset(-1.0, 0.0);
                  var end = Offset.zero;
                  var tween = Tween(begin: begin, end: end);
                  var offsetAnimation = animation.drive(tween);
                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                    },
                    transitionDuration: Duration(milliseconds: 200),
              ),
                
                        );
                    }, 
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: CustomColors.firstGradientColor,
                      side: BorderSide(color: CustomColors.firstGradientColor),
                      padding: EdgeInsets.symmetric(vertical: 15)
                    ),
                    child: Text('Login'.toUpperCase()),
                    ),
                ),
                SizedBox(
                 width: 10.0,
                ),
                  Expanded(
                    child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return SignupScreen();
                },
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  var begin = Offset(-1.0, 0.0);
                  var end = Offset.zero;
                  var tween = Tween(begin: begin, end: end);
                  var offsetAnimation = animation.drive(tween);
                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                    },
                    transitionDuration: Duration(milliseconds: 200),
              ),
                
                        );
                    }, 
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: Colors.white,
                      backgroundColor: CustomColors.firstGradientColor,
                      side: BorderSide(color: CustomColors.firstGradientColor),
                      padding: EdgeInsets.symmetric(vertical: 15)
                    ),
                    child: Text('Signup'.toUpperCase()),
                    ),
                  ),
                  
              ],
            )
          ],
        ),
      ),
    );
  }
}