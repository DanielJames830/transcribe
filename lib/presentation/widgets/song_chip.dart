import 'package:flutter/material.dart';

class SongChip extends StatelessWidget {
  final int index;
  final bool invert;
  const SongChip({Key? key, required this.index, this.invert = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = [
      Text(
        (index + 1).toString(),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ListTile(
            onTap: () {},
            leading: !invert
                ? Image.network("https://images.genius.com/5d9e15fa7abc70193835b12c221adcb4.1000x1000x1.jpg")
                : null,
            trailing: invert
                ? Image.network("https://images.genius.com/5d9e15fa7abc70193835b12c221adcb4.1000x1000x1.jpg")
                : null,
            title: Text("Teach Me to Dance", textDirection: invert ? TextDirection.rtl : TextDirection.ltr),
            subtitle: Text("Jervis Campbell", textDirection: invert ? TextDirection.rtl : TextDirection.ltr),
          ),
        ),
      ),
    ];

    return Material(
      color: Colors.transparent,
      child: Row(
        children: !invert ? children : children.reversed.toList(),
      ),
    );
  }
}
