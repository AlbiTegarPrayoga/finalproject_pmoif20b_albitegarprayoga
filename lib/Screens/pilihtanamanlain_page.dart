import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:flutter/material.dart';

class PilihtanamanlainPage extends StatelessWidget {
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
            "Pilihan Tanaman Lain", style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold)
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: Background(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 50),
                Container(
                  height: size.height * 0.275,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.indigoAccent.shade700),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3.5,
                          offset: Offset(0, 0),
                        )
                      ]
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      color: Colors.white,
                      // child: Image.asset(''),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: size.height,
                  width: size.width * 0.85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.indigoAccent.shade700),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3.5,
                          offset: Offset(0, 0),
                        )
                      ]
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      color: Colors.white,
                      child: Text(
                        "Penentuan Bibit\n"
                            "Tahap pembibitan merupakan hal dasar keberhasilan budidaya pisang. Pembibitan pisang umumnya dilakukan dengan cara vegetatif yaitu tunas. Kriteria pemilihan bibit pisang yang ideal adalah:\n"
                            "• Tinggi tunas berkisar antara 100 hingga 150 cm Diameter umbi tunas antara 15-20 cm Tunas berbentuk seperti daun berhelai sempit",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}