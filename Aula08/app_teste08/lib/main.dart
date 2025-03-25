import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaApp(    
    ),
  ));
}

class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App aula 08 - Exrecícios"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Sizebox adiciona espaçamento para separar os elementos
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 80,
                  color: Colors.purple,
                  child: Text("Mobile",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                  textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(width: 60,height: 60,color: Colors.purpleAccent,),
              Container(width: 60,height: 60,color: Colors.purpleAccent,),
              Container(width: 60,height: 60,color: Colors.purpleAccent,),
              ],
            ),
          ),
          Container(
            color: Color,
          )
        ],
      ),
    );
  }
}