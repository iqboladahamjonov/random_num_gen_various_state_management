import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_foundations/main.dart';
import 'package:flutter_foundations/randomizer_change_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RandomizerPage extends ConsumerWidget {
  RandomizerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomizer = ref.watch(randomizerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(
        child: Text(
          randomizer.generatedNumber?.toString() ?? 'Generate a number',
          style: TextStyle(fontSize: 42),
        ),
        // child: Consumer<RandomizerChangeNotifier>(
        //   builder: (context, notifier, child) {
        //     return Text(
        //       notifier.generatedNumber?.toString() ?? 'Generate a number',
        //       style: TextStyle(fontSize: 42),
        //     );
        //   },
        // ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ref.read(randomizerProvider.notifier).generateRandomNumber();
        },
        label: Text('Generate'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
