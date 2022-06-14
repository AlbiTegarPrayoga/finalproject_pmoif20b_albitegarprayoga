import 'package:finalproject_pmoif20b_albitegarprayoga/home_page.dart;
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static String tag = 'register-page';
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {
    final title = Hero(
      tag: 'hero',
      child: Text('Register', textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.bold)
      ),
    );

    final usernametext = Text("Username",
        style: TextStyle(color: Colors.blueGrey, fontSize: 16),
        textAlign: TextAlign.left);

    final username = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
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

    final regisButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(LoginPage.tag);
          },
          color: Colors.blueAccent,
          child: Text('Register',
              style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text("Sudah punya akun?\nLogin",
          style: TextStyle(color: Colors.blueGrey,
              fontSize: 12),
          textAlign: TextAlign.center),
      onPressed: () {Navigator.of(context).pushNamed(LoginPage.tag);
      },
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
            usernametext,
            SizedBox(height: 5.0),
            username,
            SizedBox(height: 30.0),
            emailtext,
            SizedBox(height: 5.0),
            email,
            SizedBox(height: 30.0),
            passwordtext,
            SizedBox(height: 5.0),
            password,
            SizedBox(height: 30.0),
            regisButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
