// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDataResponse _$UserDataResponseFromJson(Map<String, dynamic> json) =>
    UserDataResponse(
      success: json['success'] as bool?,
      userDetail: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => UserDetail.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$UserDataResponseToJson(UserDataResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.userDetail,
    };
