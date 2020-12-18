import 'package:flutter/material.dart';
import 'package:mobile_student_sttnf/widgets/circle_avatar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 3)),
                Avatar(),
                Text('Ardith Lutfiawan',
                    style: TextStyle(
                        fontSize: 34,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 3)),
                Text('Mahasiswa',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black38,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(
                    color: Colors.indigo,
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.confirmation_number,
                      color: Colors.indigo,
                    ),
                    title: Text(
                      'ardith24',
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.indigo,
                    ),
                    title: Text(
                      'ardith.lutfiawan@gmail.com',
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.indigo,
                    ),
                    title: Text(
                      '081317907503',
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
