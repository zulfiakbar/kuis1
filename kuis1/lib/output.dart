import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class output extends StatelessWidget {
  const output({
    Key key,
    @required this.hasil,
  }) : super(key: key);
  final double hasil;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hasil ",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            hasil.toStringAsFixed(1),
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
// );
  }
}
