import 'package:flutter/material.dart';

class SongChip extends StatelessWidget {
  const SongChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Image.network("https://images.genius.com/5d9e15fa7abc70193835b12c221adcb4.1000x1000x1.jpg"),
      title: Text("Teach Me to Dance"),
      subtitle: Text("Jervis Campbell"),
    );
  }
}
