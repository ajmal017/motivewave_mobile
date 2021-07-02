import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget> [
          IconButton(icon: Icon(Icons.menu), tooltip: "Navigation menu", onPressed: null),
          Expanded(child: title),
          IconButton(icon: Icon(Icons.search), tooltip: 'Search', onPressed: null)
        ]
      )
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(title: Text('Example Title', style: Theme.of(context).primaryTextTheme.headline6)),
          Expanded(child: Center(child: Text('Hello World')))
        ]
      )
    );
  }
}

void main() {
  runApp(MaterialApp(
      title: 'My App',
      home: SafeArea(child: MyScaffold()))
  );
}