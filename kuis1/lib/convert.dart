import 'package:flutter/material.dart';

class convert extends StatelessWidget {
  Function convertdata;
  convert({Key key, @required this.convertdata});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      textColor: Colors.white,
      onPressed: () {
        convertdata();
      },
      color: Colors.black87,
      child: const Text("Konversi Byte", style: TextStyle(fontSize: 20)),
    );
  }
}
