import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/manfaat_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/tutor_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:flutter/material.dart';

class PilihbuahPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, size: 35,
        ),
        elevation: 5.0,
        centerTitle: true,
        title: Text(
            "Rambutan", style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold)
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: size.height * 0.4,
                width: size.width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.indigoAccent.shade700),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    color: Colors.white,
                    child: Image.asset('assets/images/buah/rambutan.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: size.height * 0.055,
                width: size.width * 0.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    color: Colors.indigoAccent[700],
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => TutorPage(),),);
                    },
                    child: Text(
                      "Tutorial",
                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: size.height * 0.055,
                width: size.width * 0.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    color: Colors.indigoAccent[700],
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ManfaatPage(),),);
                    },
                    child: Text(
                      "Manfaat",
                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}