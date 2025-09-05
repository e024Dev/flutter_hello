import 'package:flutter/material.dart';

class XylophonePage extends StatelessWidget {
  const XylophonePage({super.key});

  // Função para reproduzir o áudio correspondente a um id determinado
  //
  // @param id O id do áudio a ser reproduzido (1 a 7)
  //
  // @return void
  _playAudio(int id) async {
    // Descarta todos os recursos de áudio carregados anteriormente
    // await SoLoud.instance.disposeAllSources();
    // Carrega o arquivo de áudio correspondente ao id fornecido
    // var asset = await SoLoud.instance.loadAsset('assets/audio/note$id.wav');
    // Reproduz o áudio carregado
    // await SoLoud.instance.play(asset);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Xylophone')),
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
    );
  }
}


/// Um botão personalizado com a cor, ID e função de retorno fornecidos.
///
/// O [cor] é a cor do botão, o [id] é o ID do botão (1 a 7) e o [onTap] é a função a ser chamada quando o botão for pressionado.
///
/// Exemplo de uso:
///
/// 

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
