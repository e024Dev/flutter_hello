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
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text('Xylophone')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildButton(cor: Colors.red, id: 1),
            buildButton(cor: Colors.orange, id: 2),
            buildButton(cor: Colors.yellow, id: 3),
            buildButton(cor: Colors.green, id: 4),
            buildButton(cor: Colors.blue, id: 5),
            buildButton(cor: Colors.indigo, id: 6),
            buildButton(cor: Colors.purple, id: 7),
          ],
        ),
      ),
    );
  }

  Widget buildButton({required MaterialColor cor, required int id}) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: id.toDouble() * 5,
        ),
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: cor.shade300),
          onPressed: () => _playAudio(id),
          child: Text(''),
        ),
      ),
    );
  }
}
