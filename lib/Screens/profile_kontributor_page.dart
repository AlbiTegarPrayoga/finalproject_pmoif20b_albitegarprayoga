import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/home_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileKontributorPage extends StatefulWidget {
  const ProfileKontributorPage({ Key? key }) : super(key: key);

  @override
  _ProfileKontributorPageState createState() => _ProfileKontributorPageState();
}

class _ProfileKontributorPageState extends State<ProfileKontributorPage> {

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 15),
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
              "Profile Kontributor",
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
              height: size.height * 0.055,
              width: size.width * 0.7,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.blueGrey[100],fontStyle: FontStyle.italic),
                  border: InputBorder.none,
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(7)
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
              height: size.height * 0.055,
              width: size.width * 0.7,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "@gmail.com",
                  hintStyle: TextStyle(color: Colors.blueGrey[100],fontStyle: FontStyle.italic),
                  border: InputBorder.none,
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(7)
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
              height: size.height * 0.055,
              width: size.width * 0.7,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Alamat",
                  hintStyle: TextStyle(color: Colors.blueGrey[100],fontStyle: FontStyle.italic),
                  border: InputBorder.none,
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(7)
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
              decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(7)
              ),
            ),
            SizedBox(height: 95),
            Container(

              alignment: Alignment(-0.9, -0.1),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HomePage(username: ''),),);
                },
                child: Text(
                  "Beralih\nSebagai Pembaca",
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