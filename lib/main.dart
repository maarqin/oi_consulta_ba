import 'package:flutter/material.dart';
import 'package:oi_consulta_ba/theme/theme.dart';
import 'package:oi_consulta_ba/ui/page_opened.dart';
import 'package:oi_consulta_ba/ui/read_bas.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkYellowTheme(),
      home: ReadBAS(),
      routes: {
        'open_url' : (_) => PageOpened(),
      },
    );
  }
}