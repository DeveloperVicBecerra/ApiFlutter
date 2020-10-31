import 'package:color_pick/color_pick.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color currentColor = Color(0xff0000ff);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tarea"),
        backgroundColor: currentColor,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          ColorPickView(
            selectColor: Color(0xff000000),
            selectRadius: 30,
            padding: 100,
            selectRingColor: Colors.black,
            selectColorCallBack: (color) {
              setState(() {
                currentColor = color;
              });
            },
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/9/9a/Logo_apple_pnh.png",
            height: 70,
            color: currentColor,
          ),
          Text(
            "Hello Apple",
            style: TextStyle(
                color: currentColor,
                fontSize: 40,
                fontWeight: FontWeight.w700,
                letterSpacing: 3),
          ),
        ],
      )),
    );
  }
}
