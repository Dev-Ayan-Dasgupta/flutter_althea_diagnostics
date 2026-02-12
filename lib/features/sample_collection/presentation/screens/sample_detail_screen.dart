import 'package:flutter/material.dart';

class SampleDetailScreen extends StatelessWidget {
  final String sampleId;

  const SampleDetailScreen({
    super.key,
    required this.sampleId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample $sampleId'),
      ),
      body: Center(
        child: Text('Sample Detail: $sampleId'),
      ),
    );
  }
}
