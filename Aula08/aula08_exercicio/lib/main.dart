import 'package:flutter/material.dart';

void main() {
  runApp(TelaApp()
  );
}
class TelaApp extends StatelessWidget {
  const TelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("App: Contador"),
          backgroundColor: Colors.red,
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String? _msg ; 
  _exibemsg(){
    setState(() {
      _msg = "Hello World!";
    });
  }

  _limpar(){
    setState(() {
      _msg = "";
    });
  }

  

  void _incrementCounter(){
    setState((){
      +counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(alignment: Alignment.center,
              width: 200,height: 200,color: Colors.red,
            child:Text("${_msg}",
            textAlign: TextAlign.center,
            style: 
            TextStyle(
              fontSize: 30,
              color:
               Colors.white),),),
          ),
      
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 ElevatedButton(onPressed: _exibemsg, child: Text("Exibir ")),
                TextButton(onPressed: _limpar, child: Text("Limpar")),
               ],
             ),
          
        ],
      ),
    );
  }
}