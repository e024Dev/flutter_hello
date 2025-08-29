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
            CustomButton(cor: Colors.red, id: 1, onTap: () => _playAudio(1)),
            CustomButton(cor: Colors.orange, id: 2, onTap: () => _playAudio(2)),
            CustomButton(cor: Colors.yellow, id: 3, onTap: () => _playAudio(3)),
            CustomButton(cor: Colors.green, id: 4, onTap: () => _playAudio(4)),
            CustomButton(cor: Colors.blue, id: 5, onTap: () => _playAudio(5)),
            CustomButton(cor: Colors.indigo, id: 6, onTap: () => _playAudio(6)),
            CustomButton(cor: Colors.purple, id: 7, onTap: () => _playAudio(7)),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.id,
    required this.cor,
    required this.onTap,
  });

  final int id;
  final MaterialColor cor;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: id.toDouble() * 5,
        ),
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: cor.shade300),
          onPressed: onTap,
          child: Text(''),
        ),
      ),
    );
  }
}
