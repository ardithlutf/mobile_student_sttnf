import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_student_sttnf/screens/mk_page.dart';

List<String> pengumuman = [
  "Pemograman Web",
  "Pemograman Mobile",
  "Basis Data II",
  "Teknik Jaringan Komputer"
];

class PengumumanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengumuman'),
      ),
      body: ListView.builder(
        itemCount: pengumuman.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MKPage())),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Card(
                  child: Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          'Info Mata Kuliah',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Text(
                          '${pengumuman[index]} - Pengumuman bagi Mahasiswa yang mengambil mata kuliah Integrasi Sistem pada semester ganjil TA 20/21, kuliah perdana akan diselenggarakan secara video conference.',
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.justify,
                        ),
                        Align(
                            heightFactor: 1.5,
                            alignment: Alignment.bottomRight,
                            child: Text('18 Desember 2020')),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
