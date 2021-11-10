import 'package:flutter/material.dart';
String _email="dxcat2003@gmail.com";
String _password="dxjui";
final _formKey=GlobalKey<FormState>();

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Sign Up Page"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    validator: (text){
                      if(text==null ||text.isEmpty ){
                        return"This field is empty";
                      }
                    },
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      suffix: Icon(Icons.attach_email_sharp),
                      hintText: ("Enter Your Email"),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (text){
                      if(text==null ||text.isEmpty ){
                        return"This field is empty";
                      }
                    },
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        suffix: Icon(Icons.remove_red_eye),
                        hintText: ("Enter Your Password"),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.black),
                        )
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
