import 'package:flutter/material.dart';

String _email= "tamgidhossen2003@gmail.com";
String _password= "heydxcat";
final _formKey=GlobalKey<FormState>();


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
        child:  Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(

                        image: DecorationImage(
                            image: AssetImage("assets/images/image4.png")

                        ),
                        borderRadius: BorderRadius.circular(200)

                    ),
                  ),
                  SizedBox(height: 24,),
                  TextFormField(
                    validator: (text){
                      if(text==null|| text.isEmpty){
                        return "This field is empty";
                      }
                    },
                    cursorColor: Colors.black,
                     decoration: InputDecoration(
                       suffix: Icon(Icons.attach_email),
                       hintText: "Enter Your Email",
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8),
                         borderSide: BorderSide(color: Colors.black),
                       ),
                     ),
                  ),
                  SizedBox(
                      height: 20),
                  TextFormField(
                    validator: (text){
                      if(text==null|| text.isEmpty){
                        return "This field is empty";
                      }
                    },
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      suffix: Icon(Icons.access_time_filled),
                      hintText: "Enter Your Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 20),
                  ElevatedButton(
                      onPressed: (){
                        _formKey.currentState!.validate();
                      },
                      child: Text("Log In")
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
