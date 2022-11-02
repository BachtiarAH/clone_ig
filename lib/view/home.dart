import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:helloworld/view/konten.dart';
import 'package:helloworld/view/status.dart';

class Home extends StatefulWidget {
  // const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double gapStory = 6;

  List<String> akuns = [
    "fagil",
    "tegar",
    "aab",
    "bachtiar",
    "aje",
    "sulthon",
    "firman"
  ];

  statusMaker({required int jumlah}) {
    List<Widget> statuses = [];
    statuses.add(status("Status Anda"));

    for (int i = 0; i < this.akuns.length; i++) {
      statuses.add(status(this.akuns[i]));
    }

    return statuses;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 40,
        title: Text(
          "Instaagram",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.messenger_outline),
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
          //story
          Container(
            height: 81,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: statusMaker(jumlah: 8),
            ),
          ),

          //konten
          Konten(akun: "akun")
        ],
      ),
    );
  }
}
