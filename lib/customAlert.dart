// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

Future<dynamic> CustomAlert(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Apa itu Expenses?"),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        content: Text(
            "Expenses disini berguna sebagai\nrecords atau catatan pengeluaran\nanda setiap harinya. Tekan tanda\nplus '+' untuk menambahkan catatan"),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Saya Mengerti'))
        ],
      );
    },
  );
}
