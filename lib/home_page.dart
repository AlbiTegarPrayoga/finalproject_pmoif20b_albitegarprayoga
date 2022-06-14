import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
          'Welcome\nand get ready to\nGo Green',textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30, color: Colors.black)
      ),
    );

    final halo = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Colors.white70,
        ]),
      ),
      child: Column(
        children: <Widget>[
          welcome,
          SizedBox(height: 48.0),
          halo],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}