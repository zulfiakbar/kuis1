import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kuis1/output.dart';
import 'inputan.dart';
import 'convert.dart';
import 'output.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController satuan = new TextEditingController();

  var listItem = ["ZB", "EB", "PB", "TB", "GB", "MB", "B"];
  final inputController = TextEditingController();
  List<String> listViewItem = List<String>();
  String _newValue = "ZB";
  String _newValue1 = "ZB";
  double _result = 0;
  double _inputSatuan = 0;

  void hitung() {
    setState(() {
      _inputSatuan = double.parse(satuan.text);
      if (_newValue == "ZB") {
        if (_newValue1 == "EB")
          _result = _inputSatuan * 1000;
        else if (_newValue1 == "PB")
          _result = _inputSatuan * 1000000;
        else if (_newValue1 == "TB")
          _result = _inputSatuan * 1000000000;
        else if (_newValue1 == "GB")
          _result = _inputSatuan * 1000000000000;
        else if (_newValue1 == "MB")
          _result = _inputSatuan * 1000000000000000;
        else if (_newValue1 == "B")
          _result = _inputSatuan * 1000000000000000000;
      } else if (_newValue == "EB") {
        if (_newValue1 == "ZB")
          _result = _inputSatuan / 1000;
        else if (_newValue1 == "PB")
          _result = _inputSatuan * 1000;
        else if (_newValue1 == "TB")
          _result = _inputSatuan * 1000000;
        else if (_newValue1 == "GB")
          _result = _inputSatuan * 1000000000;
        else if (_newValue1 == "MB")
          _result = _inputSatuan * 1000000000000;
        else if (_newValue1 == "MB") _result = _inputSatuan * 100000000000000;
      } else if (_newValue == "PB") {
        if (_newValue1 == "ZB")
          _result = _inputSatuan / 1000000;
        else if (_newValue1 == "EB")
          _result = _inputSatuan / 1000;
        else if (_newValue1 == "TB")
          _result = _inputSatuan * 1000;
        else if (_newValue1 == "GB")
          _result = _inputSatuan * 1000000;
        else if (_newValue1 == "MB")
          _result = _inputSatuan * 1000000000;
        else if (_newValue1 == "B") _result = _inputSatuan * 1000000000000;
      } else if (_newValue == "TB") {
        if (_newValue1 == "ZB")
          _result = _inputSatuan / 1000000000;
        else if (_newValue1 == "EB")
          _result = _inputSatuan / 1000000;
        else if (_newValue1 == "PB")
          _result = _inputSatuan / 1000;
        else if (_newValue1 == "GB")
          _result = _inputSatuan * 1000;
        else if (_newValue1 == "MB")
          _result = _inputSatuan * 1000000;
        else if (_newValue1 == "G") _result = _inputSatuan * 1000000000;
      } else if (_newValue == "GB") {
        if (_newValue1 == "ZB")
          _result = _inputSatuan / 1000000000000;
        else if (_newValue1 == "EB")
          _result = _inputSatuan / 1000000000;
        else if (_newValue1 == "PB")
          _result = _inputSatuan / 1000000;
        else if (_newValue1 == "TB")
          _result = (_inputSatuan) / 1000;
        else if (_newValue1 == "MB")
          _result = _inputSatuan * 1000;
        else if (_newValue1 == "B") _result = _inputSatuan * 1000000;
      } else if (_newValue == "MB") {
        if (_newValue1 == "ZB")
          _result = _inputSatuan / 1000000000000000;
        else if (_newValue1 == "EB")
          _result = _inputSatuan / 1000000000000;
        else if (_newValue1 == "PB")
          _result = _inputSatuan / 1000000000;
        else if (_newValue1 == "TB")
          _result = _inputSatuan / 1000000;
        else if (_newValue1 == "GB")
          _result = _inputSatuan / 1000;
        else if (_newValue1 == "B") _result = _inputSatuan * 1000;
      } else if (_newValue == "B") {
        if (_newValue1 == "ZB")
          _result = _inputSatuan / 1000000000000000000;
        else if (_newValue1 == "EB")
          _result = _inputSatuan / 1000000000000000;
        else if (_newValue1 == "PB")
          _result = _inputSatuan / 1000000000000;
        else if (_newValue1 == "TB")
          _result = _inputSatuan / 1000000000;
        else if (_newValue1 == "GB")
          _result = _inputSatuan / 1000000;
        else if (_newValue1 == "MB") _result = _inputSatuan / 1000;
      }

      listViewItem.add(_newValue + ": " + _result.toString() + _newValue1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konversi Satuan',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Satuan"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              inputan(satuan: satuan),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "Dari ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  DropdownButton<String>(
                    items: listItem.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    value: _newValue,
                    onChanged: (String changeValue) {
                      setState(() {
                        _newValue = changeValue;
                      });
                    },
                  ),
                  Text("Ke ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  DropdownButton<String>(
                    items: listItem.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    value: _newValue1,
                    onChanged: (String changeValue) {
                      setState(() {
                        _newValue1 = changeValue;
                      });
                    },
                  ),
                ],
              ),
              output(hasil: _result),
              convert(convertdata: hitung),
            ],
          ),
        ),
      ),
    );
  }
}

class Input {}
