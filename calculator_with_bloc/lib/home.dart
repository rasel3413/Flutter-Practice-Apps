import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),

      ),
      body:  Column(children: [
        
            Container(

              width: double.infinity,
              height: 100,
              padding: EdgeInsets.only(right: 10),
              alignment: Alignment.bottomRight,
              child: Text("12",style: TextStyle(fontSize: 24),),
            ),
              Container(

              width: double.infinity,
              height: 100,
              padding: EdgeInsets.only(right: 10),
              alignment: Alignment.bottomRight,
              child: Text("12",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 137, 201, 254)),),
            ),
            Row(
              children: [
                Button(() { })
              ],
            )
      ]),
    );
  }
  

  Button(VoidCallback onPressed) {

    return FloatingActionButton(onPressed: onPressed,
    clipBehavior: Clip.antiAlias,
    elevation: 0,
    focusElevation: 30,
    );
  }
}