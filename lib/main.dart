import 'package:flutter/material.dart';
import 'package:flutter_projects/src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //widget principal
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = ThemeData(primarySwatch: Colors.green);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData,
      home: HomePage(titulo: "Track_Medical"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.titulo}) : super(key: key);
  final String titulo;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.titulo),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(label: "Uno", icon: Icon(Icons.access_time)),
          BottomNavigationBarItem(icon: Icon(Icons.accessible), label: "Dos"),
          BottomNavigationBarItem(icon: Icon(Icons.accessible), label: "Dos"),
        ]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Usted ha pulsado cuantas veces el botón:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text('NRC: 5240', style: Theme.of(context).textTheme.caption),
              Icon(Icons.confirmation_num_outlined)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons
                .plus_one)) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
