import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
      "name",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.none, // Works with DismissDirection.horizontal
                    background: Container(
                      color: Colors.red,
                    ),
                    child: ListTile(
                      title: Text(names[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
