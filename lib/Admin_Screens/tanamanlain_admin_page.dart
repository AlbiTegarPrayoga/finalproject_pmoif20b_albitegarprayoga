import 'dart:convert';

import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/edit_tanamanlain_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/homekategori_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/tambah_tanamanlain_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Constant/bantuan.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:need_resume/need_resume.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class TanamanlainAdminPage extends StatefulWidget {
  const TanamanlainAdminPage({ Key? key }) : super(key: key);

  @override
  _TanamanlainAdminPageState createState() => _TanamanlainAdminPageState();
}

class _TanamanlainAdminPageState extends ResumableState<TanamanlainAdminPage> {
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
                  "Tanaman Lain", style: TextStyle(
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
                        context, MaterialPageRoute(builder: (context) => TambahTanamanlainAdminPage(),),);
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
          getidtanamanlain = widgets[i]["idtanamanlain"];
          getnamatanamanlain = widgets[i]["namatanamanlain"];
          gettutorialtanamanlain = widgets[i]["tutorialtanamanlain"];
          getmanfaattanamanlain = widgets[i]["manfaattanamanlain"];
          push(context,
              MaterialPageRoute(builder: (context) => EditTanamanlainAdminPage()));
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
                getnamatanamanlain = widgets[i]["namatanamanlain"],
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
                  gettutorialtanamanlain = widgets[i]["tutorialtanamanlain"],
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
                  getmanfaattanamanlain = widgets[i]["manfaattanamanlain"],
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
    var dataURL = Uri.parse(baseURL + 'tanamanlain');
    http.Response response = await http.get(dataURL);
    setState(() {
      widgets = jsonDecode(response.body);
    });
  }
}