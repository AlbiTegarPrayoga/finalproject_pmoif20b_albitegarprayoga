import 'dart:convert';

import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/home_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/home_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/register_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginAdminPage extends StatefulWidget {
  @override
  _LoginAdminPageState createState() => _LoginAdminPageState();
}

class _LoginAdminPageState extends State<LoginAdminPage> {
  bool passwordVisible = false;
  late SharedPreferences logindata;
  late bool newuser;

  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  TextEditingController username = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  var url = Uri.parse("http://192.168.43.80:8080/restapikelompok4/login.php");

  Future _login() async {
    final response =
    await http.post(url, body: {
      "username": username.text,
      "password": pass.text,
    });
    var datauser = json.decode(response.body);
    if (datauser.length == 0) {
      setState(() {
        tampil();
      });
    } else {
      if (datauser[0]['role'] == '1') {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => HomePage(username: "",)));
      } else if (datauser[0]['role'] == '2') {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => HomePage(username: "",)));
      }

      setState(() {
        username = datauser[0]['username'];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    check_if_already_login();
  }
  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => HomePage(username: "")));
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sign in",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                "Admin",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: size.height * 0.02,
                width: size.width * 0.7,
                child: Text(
                  "Username",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2.5,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                height: size.height * 0.055,
                width: size.width * 0.7,
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.blueGrey[100],fontStyle: FontStyle.italic),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: size.height * 0.02,
                width: size.width * 0.7,
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2.5,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                height: size.height * 0.055,
                width: size.width * 0.7,
                child: TextField(
                  controller: pass,
                  obscureText: !passwordVisible,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.blueGrey[100],
                        fontStyle: FontStyle.italic),
                    suffixIcon: IconButton(
                      iconSize: 20,
                      color: Colors.blueGrey[100],
                      splashRadius: 1,
                      icon: Icon(passwordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined),
                      onPressed: togglePassword,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2.5,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                height: size.height * 0.055,
                width: size.width * 0.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    color: Colors.indigoAccent[700],
                    onPressed: () {
                      // _login();
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => HomeAdminPage(username: '',),),);
                    },
                    child: Text(
                      "Masuk",
                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void tampil() {
  Fluttertoast.showToast(
      msg: "LOGIN GAGAL",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 20);
}