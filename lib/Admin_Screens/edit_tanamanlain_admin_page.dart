import 'package:finalproject_pmoif20b_albitegarprayoga/Admin_Screens/homekategori_admin_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Constant/bantuan.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/constants.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Api/api.dart';
import 'package:flutter/material.dart';

class EditTanamanlainAdminPage extends StatefulWidget {
  const EditTanamanlainAdminPage({Key? key}) : super(key: key);

  @override
  State<EditTanamanlainAdminPage> createState() => _EditTanamanlainAdminPageState();
}

class _EditTanamanlainAdminPageState extends State<EditTanamanlainAdminPage> {
  TextEditingController controlleridtanamanlain = TextEditingController();
  TextEditingController controllernamatanamanlain = TextEditingController();
  TextEditingController controllertutorialtanamanlain = TextEditingController();
  TextEditingController controllermanfaattanamanlain = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      controlleridtanamanlain.text = getidtanamanlain;
      controllernamatanamanlain.text = getnamatanamanlain;
      controllertutorialtanamanlain.text = gettutorialtanamanlain;
      controllermanfaattanamanlain.text = getmanfaattanamanlain;
    });
  }

  _edit() async {
    var data = {
      'namatanamanlain': controllernamatanamanlain.text,
      'tutorialtanamanlain': controllertutorialtanamanlain.text,
      'manfaattanamanlain': controllermanfaattanamanlain.text,
    };
    var res = CallApi().putData(data, 'tanamanlain/' + controlleridtanamanlain.text, context);
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
                      'idBuah': controllernamatanamanlain.text,
                    };
                    var res = CallApi()
                        .delData(data, 'tanamanlain/' + controlleridtanamanlain.text, context);
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
            "Edit Tanaman", style: TextStyle(
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
                      label: Text("Nama Tanaman"),
                      hintText: "Nama Tanaman"),
                  controller: controllernamatanamanlain,
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 10,
                  decoration: const InputDecoration(
                      label: Text("Tutorial"),
                      hintText: "Tutorial"),
                  controller: controllertutorialtanamanlain,
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 10,
                  decoration: const InputDecoration(
                      label: Text("Manfaat"),
                      hintText: "Manfaat"),
                  controller: controllermanfaattanamanlain,
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
