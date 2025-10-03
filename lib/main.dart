import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('ElevatedButton Widget Demo'),
      ),
      body: const Center(
        child: ElevatedButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            elevation: WidgetStatePropertyAll(8.0),
            shadowColor: WidgetStatePropertyAll(Colors.deepPurpleAccent),
            padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0)),
            minimumSize: WidgetStatePropertyAll(Size(200, 60)),
            maximumSize: WidgetStatePropertyAll(Size(300, 80)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                side: BorderSide(
                  color: Colors.deepPurpleAccent,
                  width: 2.0,
                ),
              ),
            ),
            textStyle: WidgetStatePropertyAll(
              TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
          child: Text('Тестируем ElevatedButton'),
        ),
      ),
    );
  }
}
