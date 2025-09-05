import 'package:flutter/material.dart';
import 'package:flutter_hello/pages/funny_sounds.dart';
import 'package:flutter_hello/pages/xylophone_page.dart';
// import 'package:flutter_soloud/flutter_soloud.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await SoLoud.instance.init();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: FunnySoundsPage());
  }
}
