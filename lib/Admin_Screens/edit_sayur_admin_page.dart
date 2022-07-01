import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/homekategori_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Constant/bantuan.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Api/api.dart';
import 'package:flutter/material.dart';

class EditSayurAdminPage extends StatefulWidget {
  const EditSayurAdminPage({Key? key}) : super(key: key);

  @override
  State<EditSayurAdminPage> createState() => _EditSayurAdminPageState();
}

class _EditSayurAdminPageState extends State<EditSayurAdminPage> {
  TextEditingController controlleridsayur = TextEditingController();
  TextEditingController controllernamasayur = TextEditingController();
  TextEditingController controllertutorialsayur = TextEditingController();
  TextEditingController controllermanfaatsayur = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      controlleridsayur.text = getidsayur;
      controllernamasayur.text = getnamasayur;
      controllertutorialsayur.text = gettutorialsayur;
      controllermanfaatsayur.text = getmanfaatsayur;
    });
  }

  _edit() async {
    var data = {
      'namasayur': controllernamasayur.text,
      'tutorialsayur': controllertutorialsayur.text,
      'manfaatsayur': controllermanfaatsayur.text,
    };
    var res = CallApi().putData(data, 'sayur/' + controlleridsayur.text, context);
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => HomeKategoriAdminPage(username: ''),),);
  }

  _hapus() async {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text("Hapus Data"),
            content: Text("Apakah anda yakin?"),
            actions: [
              TextButton(
                  onPressed: () async {
                    var data = {
                      'jenis': 'hapus',
                      'idBuah': controllernamasayur.text,
                    };
                    var res = CallApi()
                        .delData(data, 'sayur/' + controlleridsayur.text, context);
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomeKategoriAdminPage(username: ''),),);
                  },
                  child: const Text('Ya')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: const Text('Tidak'))
            ],
          );
        });
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
            "Edit Sayur", style: TextStyle(
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
                      label: Text("Nama Sayur"),
                      hintText: "Nama Sayur"),
                  controller: controllernamasayur,
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 10,
                  decoration: const InputDecoration(
                      label: Text("Tutorial"),
                      hintText: "Tutorial"),
                  controller: controllertutorialsayur,
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 10,
                  decoration: const InputDecoration(
                      label: Text("Manfaat"),
                      hintText: "Manfaat"),
                  controller: controllermanfaatsayur,
                ),
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
                        _edit();
                      },
                      child: Text(
                        "Simpan",
                        style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                  ),
                ),
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
                        _hapus();
                      },
                      child: Text(
                        "Hapus",
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
