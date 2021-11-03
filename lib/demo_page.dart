import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle_sharp),
            Text("Demo Page"),
            SizedBox(width: 5,),
          ],
        ),
      ),
     body: Container(
       color: Colors.green.shade100,
       child: Center(
         child: Column(
          children: [ Text("Hey Dx Cat",textAlign: TextAlign.center,style: TextStyle(
              color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold
          ),),
            Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/image8.png")
              ),
                borderRadius: BorderRadius.circular(200),
              border: Border.all(color: Colors.black,width: 5)
            ),
          ),
            Text("Image1",textAlign: TextAlign.center,style: TextStyle(
                color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold
            ),),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/image9.png")
                  ),
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(color: Colors.black,width: 5)
              ),
            ),
            Text("Image2",textAlign: TextAlign.center,style: TextStyle(
                color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold
            ),),
          ],
         ),
       ),
     ),
    );
  }
}
