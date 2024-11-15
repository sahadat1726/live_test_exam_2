import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(BloodBankApp());
}

class BloodBankApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.deepOrangeAccent,foregroundColor: Colors.white)),
      home: Home_Route(),
    );
  }
}

class Home_Route extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Need Blood'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CircleAvatar(
            backgroundColor: Colors. grey,
            maxRadius: 72,
            child: Icon(Icons.bloodtype_outlined,color: Colors.deepOrangeAccent,size: 72,),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Donate Blood',style: TextStyle(fontWeight: FontWeight.w600),),
            )
          ],

        ),
      ),
    );
  }

}