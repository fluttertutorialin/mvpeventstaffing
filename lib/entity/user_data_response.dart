import 'package:json_annotation/json_annotation.dart';
import 'user_detail.dart';
part 'user_data_response.g.dart';

@JsonSerializable(includeIfNull: true)
class UserDataResponse {
  bool? success;

  @JsonKey(name: 'data')
  Map<dynamic, List<UserDetail>>? userDetail;

  UserDataResponse({this.success, this.userDetail});

  factory UserDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDataResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataResponseToJson(this);
}
