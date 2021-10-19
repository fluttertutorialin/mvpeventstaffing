import 'package:json_annotation/json_annotation.dart';
part 'user_detail.g.dart';

@JsonSerializable(includeIfNull: true)
class UserDetail {
  String? id;

  UserDetail({this.id});

  factory UserDetail.fromJson(Map<String, dynamic> json) => _$UserDetailFromJson(json);
  Map<String, dynamic> toJson() => _$UserDetailToJson(this);
}
