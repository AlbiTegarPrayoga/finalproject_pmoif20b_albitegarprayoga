import 'dart:ui';

import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/buah_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/sayur_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/tanamanlain_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/profile_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  final String username;
  HomePage({required this.username});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                SizedBox(width: 290),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ProfilePage(),),);
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Welcome",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "and get ready to",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Go ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Green",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.indigoAccent.shade700),
              ),
              height: size.height * 0.15,
              width: size.width * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 10),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => BuahPage(),),);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Buah",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.indigoAccent.shade700),
                      ),
                      SizedBox(width: 50),
                      Image.asset('assets/images/buah.jpg')
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.indigoAccent.shade700)
              ),
              height: size.height * 0.15,
              width: size.width * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 10),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => SayurPage(),),);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sayur",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.indigoAccent.shade700),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(width: 20),
                      Image.asset('assets/images/sayur.jpg')
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.indigoAccent.shade700)
              ),
              height: size.height * 0.055,
              width: size.width * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 10),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => TanamanlainPage(),),);
                  },
                  child: Text(
                    "Tanaman Lain",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.indigoAccent.shade700),
                  ),
                ),
              ),
            ),
            SizedBox(height: 75),
          ],
        ),
      ),
    );
  }
}