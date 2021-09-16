import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RandomizerPage extends HookWidget {
  final randomGenerator = Random();

  final int min, max;
  RandomizerPage({
    Key? key,
    required this.min,
    required this.max,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final generatedNumber = useState<int?>(null);
    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(
        child: Text(
          generatedNumber.value?.toString() ?? 'Generate a number', //used safe operator ?, coz number can be null still
          style: TextStyle(fontSize: 42),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          generatedNumber.value = min + randomGenerator.nextInt(max + 1 - min);
          //   setState(() {
          //     _generatedNumber = widget.min + randomGenerator.nextInt(widget.max + 1 - widget.min);
          //   });
        },
        label: Text('Generate'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
