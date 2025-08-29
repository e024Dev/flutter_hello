import 'package:flutter/material.dart';
import 'package:flutter_soloud/flutter_soloud.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SoLoud.instance.init();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  _playAudio(int id) async {
    await SoLoud.instance.disposeAllSources();
    var asset = await SoLoud.instance.loadAsset('assets/audio/note$id.wav');
    await SoLoud.instance.play(asset);
  }

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
                onTap: () async => _playAudio(1),
                child: Container(color: Colors.red),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () async => _playAudio(2),
                child: Container(color: Colors.orange),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () async => _playAudio(3),
                child: Container(color: Colors.yellow),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () async => _playAudio(4),
                child: Container(color: Colors.green),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () async => _playAudio(5),
                child: Container(color: Colors.cyan),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () async => _playAudio(6),
                child: Container(color: Colors.blue),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () async => _playAudio(7),
                child: Container(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
