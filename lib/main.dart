import 'package:exemplo8/three_page.dart';
import 'package:exemplo8/two_page.dart';
import 'package:flutter/material.dart';

import 'one_page.dart';

void main() {
  runApp(const MyApp());
}

//stl
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//criando um tema em cor verde... e q diz q a page home é a ONE PAGE
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      //passando a rota inicial
      initialRoute: '/',
      //passando as rotas(((PAGES))) a baixo a rota inicial por padrao é o /....
      routes: {
        '/': (_) => const OnePage(),
        '/twoPage': (_) => const twoPage(),
        '/threePage': (_) => const threePage(),
      },
    );
  }
}
