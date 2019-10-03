import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class PageOpened extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final String bas = ModalRoute.of(context).settings.arguments;

    return new WebviewScaffold(
      url: "https://workforce.brasiltelecom.com.br/cgi-bin/DetalhesBAs.pl?"
          "UsErLoGiN=&imprimir=true&bas=$bas&tipo=todos",
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Color(0xff00A696),
        title: new Text("BAS #$bas", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
