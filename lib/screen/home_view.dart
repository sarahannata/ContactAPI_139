import 'package:data_kontak/model/kontak.dart';
import 'package:data_kontak/widget/kontak_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Orang"),
      ),
      body: FutureBuilder<List<Kontak>>(builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text("Error: ${snapshot.error}"),
          );
        } else {
          return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                Kontak person = snapshot.data![index];
                return ListTile(
                  title: Text(person.nama),
                  subtitle: Text(person.email),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(person.foto),
                  ),
                );
              });
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormKontak()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
