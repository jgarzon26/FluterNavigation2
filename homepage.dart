import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{

  static const _textPadding = EdgeInsets.fromLTRB(20, 20, 20, 50);
  var recentTrans = Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color.fromRGBO(36, 36, 36, 1),

        )
    );

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.face_rounded, size: 35,),
          actions: [
            TextButton(
              child: Text("Sign out", style: TextStyle(fontSize: 25),),
              onPressed: () => Navigator.pop(context),
            ) ,
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: _textPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Your Cards", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),),
                  Text("Your have 3 Active Cards", style: TextStyle(fontSize: 18, color: Colors.white),),
                ],
              ),
            ),
            Center(
              child: Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.orange
                  ),
              ),
            ),
            const Padding(
              padding: _textPadding,
              child: Text(
                "Recent Transactions",
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  recentTrans,
                  const Padding(padding: EdgeInsets.all(10)),
                  recentTrans,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}