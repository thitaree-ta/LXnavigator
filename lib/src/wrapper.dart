import 'package:flutter/material.dart';
import 'package:lxnavigator/src/aunthenticate/aunthenicate.dart';
import 'package:lxnavigator/src/home/views/home.dart';
import 'package:lxnavigator/src/models/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
   

    //return either Home and Aunthenicate widget
   if(user == null) {
      return Authenticate();
    } else {
      return Home();
    }
    
  }
}