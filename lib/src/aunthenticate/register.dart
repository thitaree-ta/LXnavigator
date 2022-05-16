import 'package:flutter/material.dart';
import 'package:lxnavigator/src/presenters/auth.dart';
import 'package:lxnavigator/src/shared/constant.dart';
import 'package:lxnavigator/src/shared/loading.dart';

// "stful" then press tab to show class....extends... StatefulWidget{}
//  and class ...._State extends State<name of class from above> {}


class Register extends StatefulWidget {
  final Function toggleView;

  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  
 
  
//text field state
  String email = '';
  String password = '';
  String error = '';
  String username = '';
  String firstname = '';
  String lastname = '';
  String occupation = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.brown[100],
            appBar: AppBar(
                backgroundColor: Colors.brown[400],
                elevation: 0.0,
                title: Text('Sign up in to LX Navigator'),
                actions: <Widget>[
                  FlatButton.icon(
                      icon: Icon(Icons.person),
                      label: Text('Sign In'),
                      onPressed: () {
                        widget.toggleView();
                      })
                ]),
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                        decoration:
                            textInputDecoration.copyWith(hintText: 'Email'),
                        validator: (val) =>
                            val.isEmpty ? 'Enter an email' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        }),
                    SizedBox(height: 5.0),
                    TextFormField(
                        decoration:
                            textInputDecoration.copyWith(hintText: 'Password'),
                        obscureText: true,
                        validator: (val) => val.length < 6
                            ? 'Enter a password 6+ chars long'
                            : null,
                        onChanged: (val) {
                          setState(() => password = val);
                        }),
                    SizedBox(height: 5.0),
                    TextFormField(
                        decoration: textInputDecoration.copyWith(
                            hintText: 'First name'),
                        validator: (val) =>
                            val.isEmpty ? 'Enter an First name' : null,
                        onChanged: (val) {
                          setState(() => firstname = val);
                        }),
                    SizedBox(height: 5.0),
                    TextFormField(
                        decoration:
                            textInputDecoration.copyWith(hintText: 'Last name'),
                        validator: (val) =>
                            val.isEmpty ? 'Enter an Last name' : null,
                        onChanged: (val) {
                          setState(() => lastname = val);
                        }),
                    SizedBox(height: 5.0),
                    TextFormField(
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Occupation'),
                        validator: (val) =>
                            val.isEmpty ? 'Enter an Occupation' : null,
                        onChanged: (val) {
                          setState(() => occupation = val);
                        }),
                    SizedBox(height: 5.0),
                    RaisedButton(
                        color: Colors.pink[400],
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            setState(() => loading = true);
                            dynamic result =
                                await _auth.registerWithEmailAndPassword(email,
                                    password, firstname, lastname, occupation);
                            if (result == null) {
                              setState(() {
                                error = 'please supply a valid email';
                                loading = false;
                              });
                            }
                          }
                        }),
                    SizedBox(height: 5.0),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
