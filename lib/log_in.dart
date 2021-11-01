import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In Page"),
      ),
      body:Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child:  Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(

                  image: DecorationImage(
                      image: AssetImage("assets/images/image4.png")

                  ),
                  borderRadius: BorderRadius.circular(200)
              ),
            )
          ],
        ),
      )
    );
  }
}
