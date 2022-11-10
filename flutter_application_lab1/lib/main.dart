import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lab1 using flutter"),
        ),
        body: Column(
          children: <Widget>[
            const Expanded(child: ImageWidget()),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (1 / .4),
                primary: false,
                padding: const EdgeInsets.all(20),
                children: const <Widget>[
                  ButtonWidget(),
                  ButtonWidget(),
                  ButtonWidget(),
                  ButtonWidget()
                ],
              ),
            ),
            const Expanded(
              child: SizedBox(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
                  ),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ));
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(36),
      child: Image.asset('assets/images/piechart.png'),
    );
  }
}

// Could be stateless right now
class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      //color: Colors.orange[200],
      child: SizedBox(
        child: FloatingActionButton(
          onPressed: () {
            debugPrint("Pressed");
          },
          backgroundColor: Colors.grey,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
          child: const Text("BUTTON"),
        ),
      ),
    );
  }
}
