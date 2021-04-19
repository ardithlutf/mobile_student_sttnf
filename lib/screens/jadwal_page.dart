import 'package:flutter/material.dart';

class JadwalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jadwal Saya')),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              Text('Semester Ganjil',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
              Text('Tahun Akademik 2020/2021',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
              SizedBox(height: 15),
              Column(
                children: <Widget>[
                  DataTable(
                    columns: <DataColumn>[
                      DataColumn(
                        label: Text(
                          'Senin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          '',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0),
                        ),
                        numeric: true,
                      ),
                    ],
                    rows: <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('08.00-10.00')),
                          DataCell(Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text('Basis Data')),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Text('Ruang: B2-205')),
                            ],
                          )),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('10.00-11.35')),
                          DataCell(Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text('Pemrograman Mobile')),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Text('Ruang: B1-105')),
                            ],
                          )),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('10.00-11.35')),
                          DataCell(Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text('Pola Desain Perangkat Lunak')),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Text('Ruang: B2-201')),
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  DataTable(
                    columns: <DataColumn>[
                      DataColumn(
                        label: Text(
                          'Selasa',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          '',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0),
                        ),
                        numeric: true,
                      ),
                    ],
                    rows: <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('10.00-11.35')),
                          DataCell(Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text('Bahasa Indonesia')),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Text('Ruang: B2-204')),
                            ],
                          )),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('10.00-11.35')),
                          DataCell(Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text('Kepemimpinan')),
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Text('Ruang: B1-101')),
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20))
                ],
              ),
            ],
          )),
    );
  }
}
