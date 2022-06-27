import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/pilihbuah_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:flutter/material.dart';

class BuahPage extends StatelessWidget {
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
            "Buah", style: TextStyle(
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
              SizedBox(height: 25),
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
                        context, MaterialPageRoute(builder: (context) => PilihbuahPage(),),);
                    },
                    child: Text(
                      "Rambutan",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.indigoAccent.shade700),
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
                      // Navigator.push(
                      //   context, MaterialPageRoute(builder: (context){
                      //   return RegisterPage(
                      //     onChanged: (String value) {  },);},),);
                    },
                    child: Text(
                      "Mangga",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.indigoAccent.shade700),
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
                      // Navigator.push(
                      //   context, MaterialPageRoute(builder: (context){
                      //   return RegisterPage(
                      //     onChanged: (String value) {  },);},),);
                    },
                    child: Text(
                      "Jeruk",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.indigoAccent.shade700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
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
                      // Navigator.push(
                      //   context, MaterialPageRoute(builder: (context){
                      //   return BuahPage();},),);
                    },
                    child: Text(
                      "Salak",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.indigoAccent.shade700),
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
                      // Navigator.push(
                      //   context, MaterialPageRoute(builder: (context){
                      //   return RegisterPage(
                      //     onChanged: (String value) {  },);},),);
                    },
                    child: Text(
                      "Pisang",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.indigoAccent.shade700),
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
                      // Navigator.push(
                      //   context, MaterialPageRoute(builder: (context){
                      //   return RegisterPage(
                      //     onChanged: (String value) {  },);},),);
                    },
                    child: Text(
                      "Pepaya",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.indigoAccent.shade700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}