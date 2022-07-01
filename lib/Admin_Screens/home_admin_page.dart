import 'dart:ui';

import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/buah_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/homekategori_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/profile_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/buah_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/sayur_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/tanamanlain_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/profile_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/welcome_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeAdminPage extends StatefulWidget {
  final String username;
  HomeAdminPage({required this.username});

  @override
  _HomeAdminPageState createState() => _HomeAdminPageState();
}

class _HomeAdminPageState extends State<HomeAdminPage> {
  late SharedPreferences logindata;
  @override
  void initState() {
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Row(
              children: [
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.logout_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => WelcomePage(),),);
                  },
                ),
                SizedBox(width: 245),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ProfileAdminPage(),),);
                  },
                ),
              ],
            ),
            SizedBox(height: 70),
            Text(
              "Welcome",
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
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.indigoAccent.shade700),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1.5,
                    blurRadius: 3,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              height: size.height * 0.15,
              width: size.width * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 10),
                  color: Colors.indigoAccent[700],
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomeKategoriAdminPage(username: ''),),);
                  },
                  child: Text(
                    "Edit",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.indigoAccent.shade700),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1.5,
                    blurRadius: 3,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              height: size.height * 0.15,
              width: size.width * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 10),
                  color: Colors.indigoAccent[700],
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ProfileAdminPage(),),);
                  },
                  child: Text(
                    "Akun",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}