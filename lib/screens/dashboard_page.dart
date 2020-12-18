import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:mobile_student_sttnf/screens/absen_page.dart';
import 'package:mobile_student_sttnf/screens/jadwal_page.dart';
import 'package:mobile_student_sttnf/screens/home_page.dart';
import 'package:mobile_student_sttnf/screens/login_page.dart';
import 'package:mobile_student_sttnf/screens/mk_page.dart';
import 'package:mobile_student_sttnf/screens/profile_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _index = 0;
  PageController _pageController;
  List title = ['Dashboard', 'Absensi', 'Profile'];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title[_index],
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
      ),
      body: SizedBox.expand(
          child: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[HomePage(), AbsenPage(), ProfilePage()],
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Selamat Datang,',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            // ListTile(
            //   leading: Icon(Icons.home),
            //   title: Text('Beranda'),
            //   onTap: () => Navigator.of(context).push(MaterialPageRoute(
            //       builder: (BuildContext context) => DashboardPage())),
            // ),
            ListTile(
              leading: Icon(Icons.notifications_none),
              title: Text('Pengumuman'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Mata Kuliah'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MKPage())),
            ),
            SizedBox(
              child: Divider(
                color: Colors.black26,
              ),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Jadwal Saya'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => JadwalPage())),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Aktivitas Saya'),
            ),
            SizedBox(
              child: Divider(
                color: Colors.black26,
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _index,
        onItemSelected: (index) {
          setState(() {
            _index = index;
          });
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text(title[_index]),
              icon: Icon(Icons.home),
              activeColor: Colors.indigoAccent,
              inactiveColor: Colors.black54),
          BottomNavyBarItem(
              title: Text(title[_index]),
              icon: Icon(Icons.chrome_reader_mode),
              activeColor: Colors.indigoAccent,
              inactiveColor: Colors.black54),
          BottomNavyBarItem(
              title: Text(title[_index]),
              icon: Icon(Icons.person),
              activeColor: Colors.indigoAccent,
              inactiveColor: Colors.black54),
        ],
      ),
    );
  }
}
