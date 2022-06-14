import 'package:finalproject_pmoif20b_albitegarprayoga/register_page.dart;
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    RegisterPage.tag: (context) => RegisterPage(),
    HomePage.tag: (context) => HomePage(),
    BuahPage.tag: (context) => BuahPage(),
    SayurPage.tag:(context) => SayurPage(),
    TanamanlainPage.tag:(context) => TanamanlainPage()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COBACOBA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}