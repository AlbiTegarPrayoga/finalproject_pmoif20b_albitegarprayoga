import 'package:finalproject_pmoif20b_albitegarprayoga/Kontributor_Screens/home_kontributor_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Api/api.dart';
import 'package:flutter/material.dart';

class TambahSayurKontributorPage extends StatefulWidget {
  const TambahSayurKontributorPage({Key? key}) : super(key: key);

  @override
  State<TambahSayurKontributorPage> createState() => _TambahSayurKontributorPageState();
}

class _TambahSayurKontributorPageState extends State<TambahSayurKontributorPage> {
  TextEditingController controllernamasayur = TextEditingController();
  TextEditingController controllertutorialsayur = TextEditingController();
  TextEditingController controllermanfaatsayur = TextEditingController();

  _simpan() async {
    var data = {
      'namasayur': controllernamasayur.text,
      'tutorialsayur': controllertutorialsayur.text,
      'manfaatsayur': controllermanfaatsayur.text,
    };
    bool res = await CallApi().postData(data, 'sayur', context);
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => HomeKontributorPage(username: ''),),);
  }

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
            "Tambah Sayur", style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold)
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    label:
                    Text(
                      "Nama Sayur",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    hintText: "Nama Sayur", hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  controller: controllernamasayur,
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 10,
                  decoration: const InputDecoration(
                    label:
                    Text(
                      "Tutorial Menanam",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    hintText: "Tutorial Menanam", hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  controller: controllertutorialsayur,
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 10,
                  decoration: const InputDecoration(
                    label:
                    Text(
                      "Manfaat",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    hintText: "Manfaat", hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  controller: controllermanfaatsayur,
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      color: Colors.indigoAccent[700],
                      onPressed: () {
                        _simpan();
                      },
                      child: Text(
                        "Simpan",
                        style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
