import 'package:flutter/material.dart';
import 'package:newcoba/home_admin.dart';


class LoginAdminPage extends StatefulWidget {
  static String tag = 'loginadmin-page';

  @override
  _LoginAdminPageState createState() => new _LoginAdminPageState();
}

class _LoginAdminPageState extends State<LoginAdminPage> {

  @override
  Widget build(BuildContext context) {
    final title = Hero(
      tag: 'hero',
      child: Text('Sign in\nAdmin', textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.bold)
      ),
    );

    final emailtext = Text("Email",
        style: TextStyle(color: Colors.blueGrey, fontSize: 16),
        textAlign: TextAlign.left);

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: '@gmail.com',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    final passwordtext = Text("Password",
        style: TextStyle(color: Colors.blueGrey, fontSize: 16),
        textAlign: TextAlign.left);

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomeAdminPage.tag);
          },
          color: Colors.blueAccent,
          child: Text('Masuk',
              style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            title,
            SizedBox(height: 48.0),
            emailtext,
            SizedBox(height: 5.0),
            email,
            SizedBox(height: 30.0),
            passwordtext,
            SizedBox(height: 5.0),
            password,
            SizedBox(height: 30.0),
            loginButton
          ],
        ),
      ),
    );
  }
}