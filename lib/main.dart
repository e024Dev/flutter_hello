import 'package:flutter/material.dart';

void main() async {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone', style: TextStyle(color: Colors.white54)),
          backgroundColor: Colors.red.shade900,
        ),
        body: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('red');
                },
                child: Container(color: Colors.red),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('orange');
                },
                child: Container(color: Colors.orange),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('yellow');
                },
                child: Container(color: Colors.yellow),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('green');
                },
                child: Container(color: Colors.green),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('cyan');
                },
                child: Container(color: Colors.cyan),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('blue');
                },
                child: Container(color: Colors.blue),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  print('purple');
                },
                child: Container(color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
