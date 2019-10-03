import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ReadBAS extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00A696),
        title: Text('Oi Consulta BA', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(43.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/logo_oi.png', height: 150),
                      SizedBox(height: 130,),
                      TextFormField(
                        controller: _numberController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: 'Insira o número do BA',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffFDB814), width: 2.0),
                            )),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Campo obrigatório';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 13),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 18.0, 0, 0),
                        child: SizedBox(
                          height: 55,
                          width: double.infinity,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5)),
                                color: Color(0xffFDB814)),
                            child: FlatButton(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.search, color: Colors.white),
                                    SizedBox(width: 10,),
                                    Text(
                                      'Ver detalhes do BA',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    _launchURL(_numberController.text);
                                  }
                                }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _launchURL(String bas) async {
    String url = "https://workforce.brasiltelecom.com.br/cgi-bin/DetalhesBAs.pl?"
        "UsErLoGiN=&imprimir=true&bas=$bas&tipo=todos";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
