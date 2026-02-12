import 'package:flutter/material.dart';

class ResultEntryScreen extends StatelessWidget {
  final String sampleId;

  const ResultEntryScreen({
    super.key,
    required this.sampleId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Entry'),
      ),
      body: Center(
        child: Text('Result Entry: $sampleId'),
      ),
    );
  }
}
