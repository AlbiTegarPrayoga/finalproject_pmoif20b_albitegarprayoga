import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/login_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/register_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child:
        Column(
          children: <Widget>[
            SizedBox(height: 80),
            Image.asset(
              "assets/images/logofarming.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: 40),
            Text(
              "Pilih Login,\njika sudah memiliki akun",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.indigoAccent.shade700),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1.5,
                    blurRadius: 3,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              height: size.height * 0.06,
              width: size.width * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 10),
                  color: Colors.indigoAccent[700],
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginPage(),),);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Pilih Register,\njika belum memiliki akun",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.indigoAccent.shade700),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1.5,
                    blurRadius: 3,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              height: size.height * 0.06,
              width: size.width * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 10),
                  color: Colors.indigoAccent[700],
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => RegisterPage(),),);
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.white),
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