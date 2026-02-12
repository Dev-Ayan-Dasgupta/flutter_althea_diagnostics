import 'package:hive_flutter/hive_flutter.dart';
import '../../../../core/errors/exceptions.dart';
import '../models/sample_model.dart';

abstract class SampleLocalDataSource {
  Future<List<SampleModel>> getCachedSamples();
  Future<SampleModel?> getCachedSampleById(String sampleId);
  Future<void> cacheSamples(List<SampleModel> samples);
  Future<void> cacheSample(SampleModel sample);
  Future<void> clearCache();
}

class SampleLocalDataSourceImpl implements SampleLocalDataSource {
  static const String _boxName = 'samples';

  Box<Map>? _box;

  Future<Box<Map>> get box async {
    if (_box == null || !_box!.isOpen) {
      _box = await Hive.openBox<Map>(_boxName);
    }
    return _box!;
  }

  @override
  Future<List<SampleModel>> getCachedSamples() async {
    try {
      final samplesBox = await box;
      final samples = samplesBox.values
          .map((json) => SampleModel.fromJson(Map<String, dynamic>.from(json)))
          .toList();
      return samples;
    } catch (e) {
      throw CacheException('Failed to get cached samples: ${e.toString()}');
    }
  }

  @override
  Future<SampleModel?> getCachedSampleById(String sampleId) async {
    try {
      final samplesBox = await box;
      final json = samplesBox.get(sampleId);
      if (json == null) return null;
      return SampleModel.fromJson(Map<String, dynamic>.from(json));
    } catch (e) {
      throw CacheException('Failed to get cached sample: ${e.toString()}');
    }
  }

  @override
  Future<void> cacheSamples(List<SampleModel> samples) async {
    try {
      final samplesBox = await box;
      final Map<String, Map<String, dynamic>> samplesToCache = {
        for (var sample in samples) sample.id: sample.toJson()
      };
      await samplesBox.putAll(samplesToCache);
    } catch (e) {
      throw CacheException('Failed to cache samples: ${e.toString()}');
    }
  }

  @override
  Future<void> cacheSample(SampleModel sample) async {
    try {
      final samplesBox = await box;
      await samplesBox.put(sample.id, sample.toJson());
    } catch (e) {
      throw CacheException('Failed to cache sample: ${e.toString()}');
    }
  }

  @override
  Future<void> clearCache() async {
    try {
      final samplesBox = await box;
      await samplesBox.clear();
    } catch (e) {
      throw CacheException('Failed to clear cache: ${e.toString()}');
    }
  }
}
