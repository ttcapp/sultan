import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondPage"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Image.asset("assets/images/image1.jpg",
        fit: BoxFit.fill,),
      ),
    );
  }
}
