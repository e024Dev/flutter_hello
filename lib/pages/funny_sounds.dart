import 'package:flutter/material.dart';

class FunnySoundsPage extends StatelessWidget {
  const FunnySoundsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Funny Sounds')),
      body: GridView.builder(
        itemCount: 18,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.primaries[index].shade400,
            ),
            onPressed: () {},
            child: Icon(Icons.play_arrow),
          );
        },
      ),
    );
  }
}
