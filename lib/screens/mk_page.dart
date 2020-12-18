import 'package:flutter/material.dart';

class MKPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mata Kuliah'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            Text('Semester Ganjil',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
            Text('Tahun Akademik 2020/2021',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
            SizedBox(height: 15),
            Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(
                              right: new BorderSide(
                                  width: 1.0, color: Colors.black54))),
                      child: Icon(Icons.book, color: Colors.indigo),
                    ),
                    title: Text(
                      "Pemrograman Web",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Sirojul Munir, S.Si., M.Kom.",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0)),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(
                              right: new BorderSide(
                                  width: 1.0, color: Colors.black54))),
                      child: Icon(Icons.book, color: Colors.indigo),
                    ),
                    title: Text(
                      "Pemrograman Mobile",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Hilmy Abidzar Tawakal, S.T., M.Kom.",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0)),
              ),
            ),
            Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(
                              right: new BorderSide(
                                  width: 1.0, color: Colors.black54))),
                      child: Icon(Icons.book, color: Colors.indigo),
                    ),
                    title: Text(
                      "Basis Data III",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Alifia Febrina, S.Kom., M.Si.",
                        style: TextStyle(color: Colors.black)),
                    trailing: Icon(Icons.keyboard_arrow_right,
                        color: Colors.black, size: 30.0)),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20))
          ],
        ),
      ),
    );
  }
}
