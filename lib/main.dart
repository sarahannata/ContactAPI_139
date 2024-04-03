import 'package:data_kontak/screen/kontak_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Kontak Form')), // Judul AppBar
        ),
        body: FormKontak(), // Widget FormKontak sebagai body
      ),
    );
  }
}
