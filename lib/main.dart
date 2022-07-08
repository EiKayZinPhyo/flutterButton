import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String txtTest = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(txtTest),
            TextButton(
                onPressed: () {
                  setState(() {
                    txtTest = "Text Button got clicked";
                  });
                },
                child: const Text("Text Button")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    txtTest = "Elevated Button got clicked";
                  });
                },
                child: const Text("Elevated Button")),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    txtTest = "Outline Button got clicked";
                  });
                },
                child: const Text("Outline Button")),
            GestureDetector(
                onTap: () {
                  setState(() {
                    txtTest = "Image  got clicked with GestureDetector Widget";
                  });
                },
                child: Image.network(
                    width: 50,
                    height: 50,
                    'https://avatars2.githubusercontent.com/u/35045612?s=280&v=4')),
            InkWell(
                onTap: () {
                  setState(() {
                    txtTest = "Image got clicked with Inkwell Widget!";
                  });
                },
                child: Image.network(
                    width: 50,
                    height: 50,
                    'https://avatars2.githubusercontent.com/u/35045612?s=280&v=4')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            txtTest = "Floating Action Button got clicked!!!";
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
