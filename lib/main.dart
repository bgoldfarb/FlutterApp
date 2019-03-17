import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//StateLessWidget and MaterialApp comes from material.dart frmo above ^
//build is required
//Scaffold creates a white background and scaffolding for the app
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _noodles = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(10.0),
                  child:
                      RaisedButton(onPressed: () {
                        setState(() {
                           _noodles.add('Ramen');
                        });
                      }, child: Text('Add Noods'))),
              Column(
                children: _noodles
                    .map((element) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/noodles.jpg'),
                              Text(element)
                            ],
                          ),
                        ))
                    .toList(),
              )
            ],
          )),
    );
  }
}
