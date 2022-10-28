import 'package:assignment3/screens/screen_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});
  String _name = "Hussein Mohamed Adan";
  String _image = "assets/images/me.jfif";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen One"),
      ),
      body: Column(
        children: [
          Container(
            child: Image(image: AssetImage(_image)),
            // child: Image.asset(_image),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              _name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              child: Text('Go Second'),
              onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return ScreenTwo(
                    name: _name,
                    image: _image,
                  );
                }));
              }),
            ),
          )
        ],
      ),
    );
  }
}
