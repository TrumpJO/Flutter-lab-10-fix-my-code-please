import 'package:flutter/material.dart';

class Gridlist extends StatefulWidget {
  const Gridlist({super.key});

  @override
  State<Gridlist> createState() => _GridlistState();
}

class _GridlistState extends State<Gridlist> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(4, (index) {
        return Center(
          child: Text(
            'Item $index',
            style: Theme.of(context).textTheme.headline5,
          ),
        );
      }),
    );
  }
}
