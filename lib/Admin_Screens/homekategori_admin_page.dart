import 'dart:ui';

import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/buah_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/home_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/profile_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/sayur_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/tanamanlain_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeKategoriAdminPage extends StatefulWidget {
  final String username;
  HomeKategoriAdminPage({required this.username});

  @override
  _HomeKategoriAdminPageState createState() => _HomeKategoriAdminPageState();
}

class _HomeKategoriAdminPageState extends State<HomeKategoriAdminPage> {
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
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomeAdminPage(username: '',),),);
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
            SizedBox(height: 30),
            Text(
              "Edit",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "and",
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
                      context, MaterialPageRoute(builder: (context) => BuahAdminPage(),),);
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
                      context, MaterialPageRoute(builder: (context) => SayurAdminPage(),),);
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
                      context, MaterialPageRoute(builder: (context) => TanamanlainAdminPage(),),);
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