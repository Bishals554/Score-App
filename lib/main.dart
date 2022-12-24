import 'package:flutter/material.dart';

void main(){
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {

  int number = 0;


  void increaseNumber(){
    setState(() {
      number++;
    });

  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }
  void resetNumber(){
    setState(() {
      number = 0;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.purple,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.purple],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              )
          ),
        ),
        title: Text("Score Changer"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          SizedBox(height: 25,),
          Center(child: Text("Score is", style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),)),
          Center(child: Text(number.toString(), style: TextStyle(color: Colors.blue, fontSize: 85, fontWeight: FontWeight.bold),)),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Increase'),
                onPressed:increaseNumber,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green
                ),),

              SizedBox(width: 5,),

              ElevatedButton(
                child: Text('Decrease'),
                onPressed:decreaseNumber,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green
                ),
              )
            ],

          )

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: resetNumber,
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: Text('This app was created by Bishal Shrestha', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
    );
  }
}