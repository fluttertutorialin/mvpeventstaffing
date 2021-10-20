// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_city_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StateCityEntity _$StateCityEntityFromJson(Map<String, dynamic> json) =>
    StateCityEntity(
      success: json['success'] as bool?,
      stateCityList: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$StateCityEntityToJson(StateCityEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.stateCityList,
    };
