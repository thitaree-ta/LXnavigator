import 'package:flutter/material.dart';
import 'package:lxnavigator/src/models/user.dart';
import 'package:lxnavigator/src/presenters/auth.dart';
import 'package:lxnavigator/src/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';

// void main(){
//   runApp(new MaterialApp(
//     home: new MyApp(),
//   ));
// }

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: AfterSplash(),
      title: Text('Welcome In LX Navigator'),
      image: Image.asset('assets/images/logo/flutter_logo.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 50.0,
      loaderColor: Colors.red,
    );
  }
}

class AfterSplash extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
