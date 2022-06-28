import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/login_admin_page.dart';
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
                height: size.height * 0.35
            ),
            SizedBox(height: 30),
            Text(
              "Pilih Login\njika sudah memiliki akun",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
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
              height: size.height * 0.055,
              width: size.width * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 10),
                  color: Colors.indigoAccent[700],
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginPage(),),);},
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Pilih Register\njika belum memiliki akun",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
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
              height: size.height * 0.055,
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
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100),
            Container(
              alignment: Alignment(-0.9, -0.1),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginAdminPage(),),);
                },
                child: Text(
                  "Login Admin",
                  style: TextStyle(
                      color: Colors.indigoAccent[700], fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}