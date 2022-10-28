import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenTwo extends StatelessWidget {
  ScreenTwo({super.key, this.name, this.image});

  String? name;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Two"),
      ),
      body: Column(
        children: [
          Container(
            child: Image(image: AssetImage(image!)),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              name!,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              child: Text('Back First'),
              onPressed: (() {
                Navigator.pop(context);
              }),
            ),
          )
        ],
      ),
    );
  }
}
