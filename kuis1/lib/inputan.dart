import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class inputan extends StatelessWidget {
  const inputan({
    Key key,
    @required this.satuan,
  }) : super(key: key);

  final TextEditingController satuan;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: satuan,
        decoration: InputDecoration(hintText: "Masukkan Angka"),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number);
  }
}
