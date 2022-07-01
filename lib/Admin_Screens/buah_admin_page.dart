import 'dart:convert';

import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/edit_buah_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/homekategori_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/tambah_buah_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Constant/bantuan.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:need_resume/need_resume.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class BuahAdminPage extends StatefulWidget {
  const BuahAdminPage({ Key? key }) : super(key: key);

  @override
  _BuahAdminPageState createState() => _BuahAdminPageState();
}

class _BuahAdminPageState extends ResumableState<BuahAdminPage> {
  List widgets = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Align(
                  child: IconButton(
                    iconSize: 40,
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => HomeKategoriAdminPage(username: '',),),);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(width: 25),
            Container(
              width: size.width * 0.46,
              alignment: Alignment.center,
              child: Text(
                  "Buah", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold)
              ),
            ),
            SizedBox(width: 25),
            Row(
              children: [
                Align(
                  child: IconButton(
                    iconSize: 40,
                    icon: Icon(
                      Icons.add_circle_rounded,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => TambahBuahAdminPage(),),);
                    },
                  ),
                ),
              ],
            ),
          ],
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
      child: GestureDetector(
        onTap: () {
          getidbuah = widgets[i]["idbuah"];
          getnamabuah = widgets[i]["namabuah"];
          gettutorialbuah = widgets[i]["tutorialbuah"];
          getmanfaatbuah = widgets[i]["manfaatbuah"];
          push(context,
              MaterialPageRoute(builder: (context) => EditBuahAdminPage()));
        },
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "*Tekan layar mana saja untuk edit",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                getnamabuah = widgets[i]["namabuah"],
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
                  gettutorialbuah = widgets[i]["tutorialbuah"],
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
                  getmanfaatbuah = widgets[i]["manfaatbuah"],
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Future<void> loadData() async {
    var dataURL = Uri.parse(baseURL + 'buah');
    http.Response response = await http.get(dataURL);
    setState(() {
      widgets = jsonDecode(response.body);
    });
  }
}