import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/homekategori_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Api/api.dart';
import 'package:flutter/material.dart';

class TambahTanamanlainAdminPage extends StatefulWidget {
  const TambahTanamanlainAdminPage({Key? key}) : super(key: key);

  @override
  State<TambahTanamanlainAdminPage> createState() => _TambahTanamanlainAdminPageState();
}

class _TambahTanamanlainAdminPageState extends State<TambahTanamanlainAdminPage> {
  TextEditingController controllernamatanamanlain = TextEditingController();
  TextEditingController controllertutorialtanamanlain = TextEditingController();
  TextEditingController controllermanfaattanamanlain = TextEditingController();

  _simpan() async {
    var data = {
      'namatanamanlain': controllernamatanamanlain.text,
      'tutorialtanamanlain': controllertutorialtanamanlain.text,
      'manfaattanamanlain': controllermanfaattanamanlain.text,
    };
    bool res = await CallApi().postData(data, 'tanamanlain', context);
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => HomeKategoriAdminPage(username: ''),),);
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
            "Tambah Tanaman", style: TextStyle(
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
                      "Nama Tanaman",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    hintText: "Nama Sayur", hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  controller: controllernamatanamanlain,
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
                  controller: controllertutorialtanamanlain,
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
                  controller: controllermanfaattanamanlain,
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
