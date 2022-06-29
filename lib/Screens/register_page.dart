import 'package:finalproject_pmoif20b_albitegarprayoga/Api/api.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/login_page.dart';
import 'package:finalproject_pmoif20b_albitegarprayoga/Screens/background.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController controllerusername = TextEditingController();
  TextEditingController controlleremail = TextEditingController();
  TextEditingController controlleralamat = TextEditingController();
  TextEditingController controllerpassword = TextEditingController();

  get onPressed => _simpan();

  _simpan() async {
    var data = {
      'username': controllerusername.text,
      'email': controlleremail.text,
      'alamat': controlleralamat.text,
      'password': controllerpassword.text,
    };
    bool res = await CallApi().postData(data, 'users', context);
    Navigator.pop(context);
  }
  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Register",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: size.height * 0.02,
                width: size.width * 0.7,
                child: Text(
                  "Username",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: size.height * 0.055,
                width: size.width * 0.7,
                child: TextField(
                  controller: controllerusername,
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.blueGrey[100],fontStyle: FontStyle.italic),
                    border: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(7)
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: size.height * 0.02,
                width: size.width * 0.7,
                child: Text(
                  "E-mail",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: size.height * 0.055,
                width: size.width * 0.7,
                child: TextField(
                  controller: controlleremail,
                  decoration: InputDecoration(
                    hintText: "@gmail.com",
                    hintStyle: TextStyle(color: Colors.blueGrey[100],fontStyle: FontStyle.italic),
                    border: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(7)
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: size.height * 0.02,
                width: size.width * 0.7,
                child: Text(
                  "Alamat",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: size.height * 0.055,
                width: size.width * 0.7,
                child: TextField(
                  controller: controlleralamat,
                  decoration: InputDecoration(
                    hintText: "Alamat",
                    hintStyle: TextStyle(color: Colors.blueGrey[100],fontStyle: FontStyle.italic),
                    border: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(7)
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: size.height * 0.02,
                width: size.width * 0.7,
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: size.height * 0.055,
                width: size.width * 0.7,
                child: TextField(
                  controller: controllerpassword,
                  obscureText: !passwordVisible,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.blueGrey[100],
                        fontStyle: FontStyle.italic),
                    suffixIcon: IconButton(
                      color: Colors.blueGrey[100],
                      splashRadius: 1,
                      icon: Icon(passwordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined),
                      onPressed: togglePassword,
                    ),
                    border: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(7)
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
                      _simpan();
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Sudah punya akun?",
                style: TextStyle(color: Colors.grey),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LoginPage(),),);
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.indigoAccent[700], fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}