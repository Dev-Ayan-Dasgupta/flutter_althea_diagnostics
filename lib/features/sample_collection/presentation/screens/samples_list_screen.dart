import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SamplesListScreen extends ConsumerWidget {
  const SamplesListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samples'),
      ),
      body: const Center(
        child: Text('Samples List - Coming Soon'),
      ),
    );
  }
}
