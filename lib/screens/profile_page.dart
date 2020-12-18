import 'package:flutter/material.dart';
import 'package:mobile_student_sttnf/widgets/circle_avatar.dart';
import 'package:mobile_student_sttnf/widgets/profile_card.dart';

String nama = 'Ardith Lutfiawan';
String role = 'Mahasiswa';
String username = '0110217068';
String email = 'ardith.lutfiawan@gmail.com';
String noHp = '081317907503';

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
                ProfileCard(field: username, icon: Icons.confirmation_number),
                ProfileCard(field: email, icon: Icons.email),
                ProfileCard(field: noHp, icon: Icons.phone),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
