import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:weatherapp_starter_project/screens/login_screen.dart';
import 'package:weatherapp_starter_project/utils/custom_colors.dart';
import 'package:weatherapp_starter_project/widgets/form_header_widget.dart';
import 'package:weatherapp_starter_project/widgets/signup_form_widget.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),

          child: Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(bottom: 30, left: 30, right: 30),
            child: Column(
              children: [
                FormHeader(
                   image: 'assets/icons/windspeed.png',
                   title: 'Get on-board!', 
                   subtitle: 'Fill in the form below to access the application'
                   ),
                   SignupFormWidget(),
                   Column(
                    children: [
                      const Text('OR', style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 18),),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(CustomColors.firstGradientColor), // Change the text color here
  ),
                          icon: Image(image: AssetImage('assets/icons/google-logo.png'), width: 20.0,),
                          onPressed: (){}
                        , label: Text('Signin with Google'.toUpperCase(), 
                        style: TextStyle(fontFamily: 'PoppinsMedium', fontSize: 13
                        ),
                        
                        ),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                        //   Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) =>  LoginScreen()),
                        // );

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
                      child: const Text.rich(
                        TextSpan(
                          text: "Already have an account?",style: TextStyle(fontFamily: 'PoppinsMedium', color: CustomColors.firstGradientColor),
                          children: [
                            TextSpan(text: ' Login',
                            style: TextStyle(fontFamily: 'PoppinsMedium', color: Colors.blue))
                          ]
                        )
                        
                        )
                        )
                    ],
                   )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

