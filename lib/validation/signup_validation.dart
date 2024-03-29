
import 'package:flutter/material.dart';
import 'package:signinpageui/validation/validation_item.dart';

class SignupValidation with ChangeNotifier {

  ValidationItem _firstName = ValidationItem('','');
  ValidationItem _lastName = ValidationItem('','');
  ValidationItem _dob = ValidationItem('','');

  //Getters
  ValidationItem get firstName => _firstName;
  ValidationItem get lastName => _lastName;
  ValidationItem get dob => _dob;
  bool get isValid {
    if (_lastName.value != null && _firstName.value != null && dob.value != null){
      return true;
    } else {
      return false;
    }
  }

  //Setters
  void changeFirstName(String value){
    if (value.length >= 3){
      _firstName=ValidationItem(value,'');
    } else {
      _firstName=ValidationItem('', "Must be at least 3 characters");
    }
    notifyListeners();
  }

  void changeLastName(String value){
    if (value.length >= 3){
      _lastName=ValidationItem(value,'');
    } else {
      _lastName=ValidationItem('', "Must be at least 3 characters");
    }
    notifyListeners();
  }

  void changeDOB(String value){
    try {
      DateTime.parse(value);
      _dob=ValidationItem(value,'');
    } catch(error){
      _dob =ValidationItem('', "Invalid Formt");
    }
    notifyListeners();
  }

  void submitData(){
    print("FirstName: ${firstName.value}, LastName: ${lastName.value}, ${DateTime.parse(dob.value)}");
  }


}