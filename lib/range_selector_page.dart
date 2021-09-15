import 'package:flutter/material.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({Key? key}) : super(key: key);

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  int _min = 0;
  int _max = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Range'),
      ),
      body: Form(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RangeSelectorTextFormField(labelText: 'Minimum'),
                const SizedBox(height: 12),
                RangeSelectorTextFormField(labelText: 'Minimum'),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          //TODO: Validate the Form
          //TODO: Navigate the the generator page
        },
      ),
    );
  }
}

class RangeSelectorTextFormField extends StatelessWidget {
  const RangeSelectorTextFormField({
    Key? key,
    required this.labelText,
  }) : super(key: key);
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        signed: true,
        decimal: false,
      ),
      onSaved: (newValue) {},
    );
  }
}
