import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test2',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white,secondary: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(

        width: double.infinity,
        padding: const EdgeInsets.only(top: 16),
        decoration: const BoxDecoration(
          color:const  Color(0xFF212121),
          image: DecorationImage(
            image: AssetImage('images/poto.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left:16,right: 16,top: 20,bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset: const Offset(0, -3), // changes position of shadow
                    ),
                  ],
                ),
                child:const Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mohamed Mouloudj",style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("19 YO , CS student at USTHB",style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    ButtonBar(
                      children: [
                        IconButton(
                          onPressed: null,
                          icon: Icon(Icons.email),
                          style: ButtonStyle(
                            iconSize: MaterialStatePropertyAll(30),
                            backgroundColor: MaterialStatePropertyAll(Colors.blue),
                            iconColor: MaterialStatePropertyAll(Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              )
            )
          ],
        ),
      ),
    );
  }
}
