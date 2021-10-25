import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';
import 'package:sultan/second_page.dart';

void main() {
  runApp(AmarApp());
}

String btnText1="Tap Button";
Color btnColor1= Colors.white;
bool imgVisibility= false;
String ima1Src="https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg";
double imgHeight=250;
double imgWidth=300;

class AmarApp extends StatelessWidget {
  const AmarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SlideDrawer(
        offsetFromRight: 380,
        backgroundColor: Colors.black,
        duration: Duration(milliseconds: 4800),
        headDrawer: Container(
          height: 200,
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYMlZz1Idi6fq4xaqnole_TMN1e7rmy0JGMBUWFqTLEZOG5uJLQoLZSNSG0C0YUXyRrto&usqp=CAU"
          ,fit: BoxFit.fitWidth,),
        ),
        items: [
          MenuItem('Home',
              icon: Icons.ac_unit_outlined,
              onTap: (){}),
          MenuItem('Project',
              icon: Icons.home,
              onTap: (){}),
          MenuItem('Favourite',
              icon: Icons.mode,
              onTap: (){}),
          MenuItem('Profile',
              icon: Icons.account_box_sharp,
              onTap: (){}),
          MenuItem('Setting',
              icon: Icons.account_box,
              onTap: (){}),
        ],
        child:MyHomePage(),
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          // call toggle from SlideDrawer to alternate between open and close
          // when pressed menu button
          onPressed: () => SlideDrawer.of(context)!.toggle(),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Sultan"),
      ),
      body: SingleChildScrollView(
          child: Center(
            child: Column(
                children: [
                  RaisedButton(
                    child: Text("Go To Next Page"),
                      onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=>SecondPage()));
                  }),
                  Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: RaisedButton(
                  color: btnColor1,
                  child: Text(btnText1,style:
                  TextStyle(color: Colors.black54,
                      fontWeight: FontWeight.bold,fontSize: 30),),
                      onPressed: (){
                  setState(() {
                    btnText1="Button Pressed";
                    btnColor1=Colors.orange;
                    imgVisibility=true;
                  });
                }),
            ),
           Visibility(
          visible: imgVisibility,
          child:
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.deepPurpleAccent,
                        width: 5
                      )
                    ),
                      height: imgHeight,
                      width: imgWidth,
                      child: Image.network(ima1Src,fit: BoxFit.cover,)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.deepPurpleAccent,
                              width: 5
                          )
                      ),
                      height: imgHeight,
                      width: imgWidth,
                      child: Image.network(ima1Src,fit: BoxFit.cover,)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.deepPurpleAccent,
                              width: 5
                          )
                      ),
                      height: imgHeight,
                      width: imgWidth,
                      child: Image.network(ima1Src,fit: BoxFit.cover,)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.deepPurpleAccent,
                              width: 5
                          )
                      ),
                      height: imgHeight,
                      width: imgWidth,
                      child: Image.network(ima1Src,fit: BoxFit.cover,)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.deepPurpleAccent,
                              width: 5
                          )
                      ),
                      height: imgHeight,
                      width: imgWidth,
                      child: Image.network(ima1Src,fit: BoxFit.cover,)
                  ),
                ),
              ],
            ),
          )
           ),//  Image.asset("assets/images/image2.jpg")

      ],
    ),
    ),
    ),
    );
  }
}

