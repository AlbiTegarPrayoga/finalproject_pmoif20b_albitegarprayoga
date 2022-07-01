import 'dart:convert';

import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Constant/bantuan.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class SayurPage extends StatefulWidget {
  const SayurPage({ Key? key }) : super(key: key);

  @override
  _SayurPageState createState() => _SayurPageState();
}

class _SayurPageState extends State<SayurPage> {
  List widgets = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, size: 35,
        ),
        elevation: 5.0,
        centerTitle: true,
        title: Text(
            "Sayur", style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold)
        ),
        backgroundColor: kPrimaryColor,
      ),
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
      child: ListView(
        children: <Widget>[
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              getnamasayur = widgets[i]["namasayur"],
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 35,
                color: Colors.indigoAccent.shade700,
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Tutorial Menanam",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.indigoAccent.shade700),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 2.5,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            width: size.width * 0.7,
            child: Container(
              child: Text(
                gettutorialsayur = widgets[i]["tutorialsayur"],
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Manfaat",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.indigoAccent.shade700),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 2.5,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            width: size.width * 0.7,
            child: Container(
              child: Text(
                getmanfaatsayur = widgets[i]["manfaatsayur"],
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Future<void> loadData() async {
    var dataURL = Uri.parse(baseURL + 'sayur');
    http.Response response = await http.get(dataURL);
    setState(() {
      widgets = jsonDecode(response.body);
    });
  }
}