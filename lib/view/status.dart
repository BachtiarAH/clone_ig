import 'package:flutter/material.dart';

class status extends StatefulWidget {
  // const Home({super.key});
  status(this.statusValue);

  late String statusValue;

  @override
  State<status> createState() => _statusState(this.statusValue);
}

class _statusState extends State<status> {
  double gapStory = 6;
  String statusNama = "";
  _statusState(String value) {
    this.statusNama = value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(gapStory),
      height: 10,
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
          ),
          Text(
            statusNama,
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
