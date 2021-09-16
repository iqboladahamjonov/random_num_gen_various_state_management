import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_foundations/randomizer_change_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';

class RandomizerPage extends StatelessWidget {
  RandomizerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final generatedNumber = useState<int?>(null);
    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(child: Consumer<RandomizerChangeNotifier>(
        builder: (context, notifier, child) {
          return Text(
            notifier.generatedNumber?.toString() ?? 'Generate a number',
            style: TextStyle(fontSize: 42),
          );
        },
      )
          // child: Text(
          //   // generatedNumber.value?.toString() ?? 'Generate a number', //used safe operator ?, coz number can be null still
          //   context.read<RandomizerChangeNotifier>().generatedNumber?.toString() ?? 'Generate a number', //used safe operator ?, coz number can be null still
          //   style: TextStyle(fontSize: 42),
          // ),
          ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<RandomizerChangeNotifier>().generateRandomNumber();
          // generatedNumber.value = min + randomGenerator.nextInt(max + 1 - min);
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
