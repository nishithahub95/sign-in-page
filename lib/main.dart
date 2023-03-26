import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signinpageui/signin_page/home_page.dart';
import 'package:signinpageui/validation/signup_validation.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupValidation(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
