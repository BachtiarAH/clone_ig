import 'package:flutter/material.dart';

class Konten extends StatelessWidget {
  const Konten({Key? key, required String akun}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 35,
              child: Row(
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
