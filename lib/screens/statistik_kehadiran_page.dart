import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pie_chart/pie_chart.dart';

class StatistikKehadiran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String hadir = '10';
    String sakit = '10';

    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Hadir", () => double.parse(hadir));
    dataMap.putIfAbsent("Tidak Hadir", () => double.parse(sakit));

    DateTime now = DateTime.now();
    String date = DateFormat("EEEE, d MMMM y").format(now);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Statistik Kehadiran",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                )),
            Container(
              padding: EdgeInsets.only(bottom: 5),
              child: Text(date),
            ),
            PieChart(
              dataMap: dataMap,
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.greenAccent),
                  title: Text(
                    "Hadir",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text('$hadir')),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.sick, color: Colors.redAccent),
                  title: Text(
                    "Sakit",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing:
                      Text("$sakit", style: TextStyle(color: Colors.black))),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.warning, color: Colors.orangeAccent),
                  title: Text(
                    "Izin",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text("0", style: TextStyle(color: Colors.black))),
            ),
            Card(
              child: ListTile(
                  leading: Icon(Icons.indeterminate_check_box_rounded,
                      color: Colors.black),
                  title: Text(
                    "Tanpa Keterangan",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text("0", style: TextStyle(color: Colors.black))),
            ),
            Padding(padding: EdgeInsets.only(top: 20))
          ],
        ),
      ),
    );
  }
}
