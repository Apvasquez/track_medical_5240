import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.titulo}) : super(key: key);
  final String titulo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      drawer: Drawer(
        child: Text(titulo),
      ),
      body: Container(
          child: Column(
        children: [
          Text(titulo, style: Theme.of(context).textTheme.headline1),
          Text(titulo, style: Theme.of(context).textTheme.headline3)],
      )),
    );
  }
}
