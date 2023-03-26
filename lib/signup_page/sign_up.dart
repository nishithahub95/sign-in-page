import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:signinpageui/validation/signup_validation.dart';

class SignUp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<SignupValidation>(context);
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('First Name',style: TextStyle(color: Color(0xffC33764)),),
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'First Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),

                errorText: validationService.firstName.error,
              ),
              onChanged: (String value) {
                validationService.changeFirstName(value);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Last Name',style: TextStyle(color: Color(0xffC33764)),),
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Last Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)),

                errorText: validationService.lastName.error,
              ),
              onChanged: (String value) {
                validationService.changeLastName(value);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('DOB',style: TextStyle(color: Color(0xffC33764)),),
                ],
              ),
            ),
            TextField(

              decoration: InputDecoration(
                 // hintText: 'Dob',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),

                  errorText: validationService.dob.error,
                  hintText: "yyyy-mm-dd"
              ),
              onChanged: (String value) {
                validationService.changeDOB(value);
              },
            ),

                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffC33764),
                          Color(0xff1D2671)
                        ],
                        //begin: Alignment.,
                        //end: Alignment.bottomCenter
                        //
                      )),
                  child:FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    focusElevation: 0,
                    focusColor:Colors.transparent ,
                    child: Text('SIGN UP',style: TextStyle(color: Colors.white,wordSpacing: 2),),
                    onPressed:  (!validationService.isValid) ? null : validationService.submitData,
                  ),
                ),
              ],
            )

      ),
    );
  }
}
