import 'package:cripto_moedas_flutter/pages/moedas_page.dart';
import 'package:flutter/material.dart';

class MeuApplicativo extends StatelessWidget {
  const MeuApplicativo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoedasBase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MoedasPage(),
    );
  }
}
