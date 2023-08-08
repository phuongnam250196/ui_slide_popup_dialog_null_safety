import 'package:flutter/material.dart';
import 'package:slide_popup_dialog_null_safety/slide_popup_dialog.dart' as slideDialog;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Slide Dialog Demo',
      home: MyHomePage(title: 'Slide Dialog Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: _showDialog,
          child: const Text("Press to open dialog"),
        ),
      ),
    );
  }

  void _showDialog() {
    slideDialog.showSlideDialog(
      context: context,
      child: const Text("Hello World"),
      // barrierColor: Colors.white.withOpacity(0.7),
      // pillColor: Colors.red,
      // backgroundColor: Colors.yellow,
    );
  }
}