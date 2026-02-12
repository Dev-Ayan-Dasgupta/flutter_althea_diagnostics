import 'package:flutter/material.dart';

class ColdChainLogScreen extends StatelessWidget {
  final String sampleId;

  const ColdChainLogScreen({
    super.key,
    required this.sampleId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log Temperature'),
      ),
      body: Center(
        child: Text('Cold Chain Log: $sampleId'),
      ),
    );
  }
}
