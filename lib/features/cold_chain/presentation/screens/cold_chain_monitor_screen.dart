import 'package:flutter/material.dart';

class ColdChainMonitorScreen extends StatelessWidget {
  final String sampleId;

  const ColdChainMonitorScreen({
    super.key,
    required this.sampleId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cold Chain Monitor'),
      ),
      body: Center(
        child: Text('Cold Chain Monitor: $sampleId'),
      ),
    );
  }
}
