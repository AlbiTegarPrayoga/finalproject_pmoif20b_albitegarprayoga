import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/home_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/home_page_kontributor.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
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
                SizedBox(width: 10),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.home_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomePage(username: '',),),);
                  },
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              "My Profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20),
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
                "E-mail",
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
                decoration: InputDecoration(
                  hintText: "@gmail.com",
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
                "Alamat",
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
                decoration: InputDecoration(
                  hintText: "Alamat",
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
                obscureText: !passwordVisible,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: Colors.blueGrey[100],
                      fontStyle: FontStyle.italic),
                  suffixIcon: IconButton(
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
            SizedBox(height: 125),
            Container(
              alignment: Alignment(-0.9, -0.1),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HomeKontributorPage(username: ''),),);
                },
                child: Text(
                  "Beralih\nSebagai Kontributor",
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