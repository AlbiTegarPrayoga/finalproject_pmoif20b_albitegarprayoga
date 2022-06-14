import 'package:flutter/material.dart';
import 'package:kontributor/buah_kontributor.dart';
import 'package:kontributor/sayur_kontributor.dart';
import 'package:kontributor/tanamanlain_kontributor.dart';

class HomeKontributorPage extends StatelessWidget {
  static String tag = 'homekontributor-page';

  @override
  Widget build(BuildContext context) {
    final edit = Container(
      child: Text(
          'Edit',textAlign: TextAlign.center, style: TextStyle(
          fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold)
      ),
    );

    final and = Container(
      child: Text(
          'and',textAlign: TextAlign.center, style: TextStyle(
          fontSize: 30, color: Colors.black)
      ),
    );

    final green = Container(
      child: Text(
          'Go Green',textAlign: TextAlign.center, style: TextStyle(
          fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold)
      ),
    );

    final halo = Container(
      child: Text(
        '',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final buahButton = Container(
      child: Material(
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 100.0,
          onPressed: () {
            Navigator.of(context).pushNamed(BuahKontributorPage.tag);
          },
          color: Colors.blueAccent,
          child: Text('Buah',
              style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final sayurButton = Container(
      child: Material(
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 100.0,
          onPressed: () {
            Navigator.of(context).pushNamed(SayurKontributorPage.tag);
          },
          color: Colors.blueAccent,
          child: Text('Sayur',
              style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final tanamanlainButton = Container(
      child: Material(
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 50.0,
          onPressed: () {
            Navigator.of(context).pushNamed(TanamanlainKontributorPage.tag);
          },
          color: Colors.blueAccent,
          child: Text('Tanaman Lain',
              style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            edit,
            and,
            green,
            SizedBox(height: 40),
            buahButton,
            SizedBox(height: 40),
            sayurButton,
            SizedBox(height: 40),
            tanamanlainButton
          ],
        ),
      ),
    );
  }
}