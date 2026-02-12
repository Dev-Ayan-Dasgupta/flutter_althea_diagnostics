import 'package:flutter/material.dart';

class SampleCollectionScreen extends StatelessWidget {
  final String sampleId;

  const SampleCollectionScreen({
    super.key,
    required this.sampleId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collect Sample'),
      ),
      body: Center(
        child: Text('Sample Collection: $sampleId'),
      ),
    );
  }
}
