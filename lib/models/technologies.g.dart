// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technologies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Technologies _$TechnologiesFromJson(Map<String, dynamic> json) => Technologies(
      json['name'] as String,
      json['id'] as int,
      json['documentation'] as String,
      json['imageURL'] as String,
    );

Map<String, dynamic> _$TechnologiesToJson(Technologies instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'documentation': instance.documentation,
      'imageURL': instance.imageURL,
    };
