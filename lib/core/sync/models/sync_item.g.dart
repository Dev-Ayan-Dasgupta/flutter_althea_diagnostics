// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SyncItem _$SyncItemFromJson(Map<String, dynamic> json) => _SyncItem(
  id: json['id'] as String,
  entityType: $enumDecode(_$SyncEntityTypeEnumMap, json['entityType']),
  operation: $enumDecode(_$SyncOperationEnumMap, json['operation']),
  data: json['data'] as Map<String, dynamic>,
  status: json['status'] as String,
  createdAt: json['createdAt'] as String,
  lastAttemptAt: json['lastAttemptAt'] as String?,
  retryCount: (json['retryCount'] as num?)?.toInt() ?? 0,
  error: json['error'] as String?,
);

Map<String, dynamic> _$SyncItemToJson(_SyncItem instance) => <String, dynamic>{
  'id': instance.id,
  'entityType': _$SyncEntityTypeEnumMap[instance.entityType]!,
  'operation': _$SyncOperationEnumMap[instance.operation]!,
  'data': instance.data,
  'status': instance.status,
  'createdAt': instance.createdAt,
  'lastAttemptAt': instance.lastAttemptAt,
  'retryCount': instance.retryCount,
  'error': instance.error,
};

const _$SyncEntityTypeEnumMap = {
  SyncEntityType.sample: 'sample',
  SyncEntityType.temperature: 'temperature',
  SyncEntityType.chainOfCustody: 'chainOfCustody',
  SyncEntityType.integrityScore: 'integrityScore',
};

const _$SyncOperationEnumMap = {
  SyncOperation.create: 'create',
  SyncOperation.update: 'update',
  SyncOperation.delete: 'delete',
};
