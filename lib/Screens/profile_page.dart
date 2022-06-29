import 'dart:convert';

import 'package:finalproject_pmoif20b_albitegarprayoga/Kontributor_Screens/home_kontributor_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/home_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Api/api.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Constant/bantuan.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List widgets = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: widgets.length,
        itemBuilder: (BuildContext context, int position) {
          return getRow(position);
        },
      ),
    );
  }

  Widget getRow(int i) {
    Size size = MediaQuery.of(context).size;
    return Background(
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
            child: Container(
              child: Text(getusername = widgets[i]["username"],
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
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
            child: Container(
              child: Text(getemail = widgets[i]["email"],
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
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
            child: Container(
              child: Text(getalamat = widgets[i]["alamat"],
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
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
            child: Container(
              child: Text(getpassword = widgets[i]["password"],
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            ),
          ),
          SizedBox(height: 125),
          Container(
            alignment: Alignment(-0.9, -0.1),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeKontributorPage(username: '',),),);
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
    );
  }

  Future<void> loadData() async {
    var dataURL = Uri.parse(baseURL + 'users');
    http.Response response = await http.get(dataURL);
    setState(() {
      widgets = jsonDecode(response.body);
    });
  }
}