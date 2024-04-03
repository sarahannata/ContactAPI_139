import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';

class FormKontak extends StatefulWidget {
  const FormKontak({super.key});

  @override
  State<FormKontak> createState() => _FormKontakState();
}

class _FormKontakState extends State<FormKontak> {
  File? _image;
  final _imagePicker = ImagePicker();

  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _emailController = TextEditingController();
  final _alamatController = TextEditingController();
  final _notelpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Nama", hintText: "Masukkan Nama"),
                controller: _namaController,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Email", hintText: "Masukkan Email"),
                controller: _emailController,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "Alamat", hintText: "Masukkan Alamat"),
                controller: _alamatController,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: "No Telepon", hintText: "Masukkan No Telepon"),
                controller: _notelpController,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Pilih Gambar"),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Simpan"),
              ),
            ),
          ],
        ));
  }
}
