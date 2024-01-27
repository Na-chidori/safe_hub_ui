import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_hub_ui/views/Authentication/login_page.dart';
import 'package:safe_hub_ui/views/Authentication/signup_page.dart';
import 'package:safe_hub_ui/views/welcome/welcomepage.dart';
import 'package:get/get.dart';

void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme,
        ),
      ),
      title: 'Flutter Demo',
      home:Welcomepage(),
    );
  }
}
