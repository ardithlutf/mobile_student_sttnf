import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:mobile_student_sttnf/screens/statistik_kehadiran_page.dart';
import 'package:mobile_student_sttnf/widgets/circle_avatar.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class AbsenPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AbsenPageState();
  }
}

class _AbsenPageState extends State<AbsenPage> with TickerProviderStateMixin {
  LocationResult _pickedLocation;
  Widget bodyWidget;

  ScrollController scrollController;
  bool dialVisible = true;

  @override
  void initState() {
    super.initState();
    bodyWidget = StatistikKehadiran();
    getProvince();

    scrollController = ScrollController()
      ..addListener(() {
        setDialVisible(scrollController.position.userScrollDirection ==
            ScrollDirection.forward);
      });
  }

  final String baseurl = 'https://limastt.herokuapp.com';
  int _valProvince;

  List<dynamic> _dataProvince = List();

  void getProvince() async {
    final response = await http.get("$baseurl/api/sprintss");
    Map<String, dynamic> map = jsonDecode(response.body);
    List<dynamic> data = map["results"];
    setState(() {
      _dataProvince = data;
    });
    print(data[0]["id"]);
  }

  void getLocation() async {
    String apiKey = 'AIzaSyDkv0pGMFzMi76EAQZQJX0jvanwwhUZc5E';

    LocationResult result = await showLocationPicker(
      context, apiKey,
      initialCenter: LatLng(6, 106),
      automaticallyAnimateToCurrentLocation: true,
      myLocationButtonEnabled: true,
      requiredGPS: true,
      layersButtonEnabled: true,
      countries: ['ID'],
      resultCardAlignment: Alignment.bottomCenter,
    );
    setState(() {
      _pickedLocation = result;
      bodyWidget = buildAddAbsen();
    });
  }

  void setDialVisible(bool value) {
    setState(() {
      dialVisible = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyWidget,
      floatingActionButton: buildSpeedDial(),
    );
  }

  Widget buildAddAbsen() {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        key: _scaffoldState,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Avatar(),
                        Padding(padding: EdgeInsets.only(left: 30)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Ardith',
                                style: TextStyle(
                                    fontSize: 34,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold)),
                            Padding(padding: EdgeInsets.only(top: 5)),
                            Row(
                              children: <Widget>[
                                Text('0110217068 - ',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black26,
                                        fontWeight: FontWeight.w400)),
                                Text('Mahasiswa',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black26,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 15)),
                    DateTimePicker(
                      type: DateTimePickerType.dateTimeSeparate,
                      dateMask: 'd MMM, yyyy',
                      initialValue: DateTime.now().toString(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      icon: Icon(
                        Icons.event,
                        color: Colors.orange,
                      ),
                      dateLabelText: 'Tanggal',
                      timeLabelText: "Jam",
                      selectableDayPredicate: (date) {
                        // Disable weekend days to select from the calendar
                        if (date.weekday == 6 || date.weekday == 7) {
                          return false;
                        }

                        return true;
                      },
                      onChanged: (val) => print(val),
                      validator: (val) {
                        print(val);
                        return null;
                      },
                      onSaved: (val) => print(val),
                    ),
                    Padding(padding: EdgeInsets.only(top: 25)),
                    Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Mata Kuliah',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                        Padding(padding: EdgeInsets.only(left: 125)),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Keterangan',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        DropdownButton(
                          dropdownColor: Colors.white,
                          hint: Text("Pilih Mata Kuliah"),
                          value: _valProvince,
                          items: _dataProvince.map((item) {
                            return DropdownMenuItem(
                              child: Text(item['nama_sprint']),
                              value: item['id'],
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _valProvince = value;
                            });
                            // blocTask.insertSprintID(value);
                          },
                        ),
                        Padding(padding: EdgeInsets.only(left: 80)),
                        DropdownButton(
                          dropdownColor: Colors.white,
                          hint: Text("Pilih Kehadiran"),
                          value: _valProvince,
                          items: _dataProvince.map((item) {
                            return DropdownMenuItem(
                              child: Text(item['nama_sprint']),
                              value: item['id'],
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _valProvince = value;
                            });
                            // blocTask.insertSprintID(value);
                          },
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 15)),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Pertemuan',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    DropdownButton(
                      isExpanded: true,
                      dropdownColor: Colors.white,
                      hint: Text("Pilih Pertemuan"),
                      value: _valProvince,
                      items: _dataProvince.map((item) {
                        return DropdownMenuItem(
                          child: Text(item['nama_sprint']),
                          value: item['id'],
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _valProvince = value;
                        });
                        // blocTask.insertSprintID(value);
                      },
                    ),
                    Padding(padding: EdgeInsets.only(top: 15)),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Lokasi',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    Card(
                      child: ListTile(
                        title: Text(
                          "Lokasi Sekarang",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.location_on,
                            color: Colors.orange, size: 30.0),
                        subtitle: Text(_pickedLocation.toString(),
                            style: TextStyle(color: Colors.black)),
                        onTap: () async {
                          getLocation();
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 30)),
                    Row(
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Text(
                            'Simpan'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.orange,
                          onPressed: () {
                            setState(() {
                              bodyWidget = StatistikKehadiran();
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  SpeedDial buildSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0),
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      visible: dialVisible,
      curve: Curves.bounceIn,
      children: [
        SpeedDialChild(
          child: Icon(Icons.info_outline, color: Colors.white),
          backgroundColor: Colors.orangeAccent,
          onTap: () {
            setState(() {
              bodyWidget = StatistikKehadiran();
            });
          },
          label: 'Informasi',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.orangeAccent,
        ),
        SpeedDialChild(
          child: Icon(Icons.add, color: Colors.white),
          backgroundColor: Colors.green,
          onTap: () {
            setState(() {
              bodyWidget = buildAddAbsen();
            });
          },
          label: 'Tambah Absensi',
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelBackgroundColor: Colors.green,
        ),
      ],
    );
  }
}
