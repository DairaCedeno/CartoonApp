import 'package:flutter/material.dart';
import 'package:cartoon_app/model/characters_data.dart';
import 'package:cartoon_app/widgets/character_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Text(
    'Cartoooooonery',
    style: TextStyle(
      fontSize: 26.0, 
      fontWeight: FontWeight.bold, 
      color: Color.fromARGB(255, 60, 127, 137), 
      fontStyle: FontStyle.italic,
    ),
  ),
  centerTitle: true, 
  backgroundColor: Color.fromARGB(255, 197, 223, 215), 
  elevation: 10,
),

      body: ListView(
         children: characters.map((character) {
          return CharacterWidget(character: character);
        }).toList(),
      ),
    );
  }
}
