import 'package:data_kontak/screen/home_view.dart';
import 'package:data_kontak/widget/kontak_form.dart';
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
          title: const Center(child: Text('Kontak Form')),
        ),
        body: const HomeView(),
      ),
    );
  }
}
