import 'package:flutter/material.dart';
import 'package:safe_hub_ui/views/Authentication/login_page.dart';
import 'package:safe_hub_ui/views/Authentication/signup_page.dart';
import 'package:animate_do/animate_do.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white,Colors.grey[600] ?? Colors.grey],
          ),

        ),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                // App Logo
                Image.asset('assets/welcomepage/logo.PNG',width: 180, // Adjust the width as needed
                  height: 180,),


                Column(
                  children: <Widget>[
                    // Welcome Text
                    FadeInUp(
                      duration: Duration(milliseconds: 1000),
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.orange[600],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // App Description
                    FadeInUp(
                      duration: Duration(milliseconds: 1200),
                      child: Text(
                        "An Ideal App designed for your Growth",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.brown[900],
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),

                // Image
                FadeInUp(
                  duration: Duration(milliseconds: 1400),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/welcomepage/Welcome-pana.png'),
                        fit: BoxFit.contain,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),

                Column(
                  children: <Widget>[
                    // Login Button
                    FadeInUp(
                      duration: Duration(milliseconds: 1500),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => loginView(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.brown[600],
                          onPrimary: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Sign Up Button
                    FadeInUp(
                      duration: Duration(milliseconds: 1600),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[600],
                          onPrimary: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
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
