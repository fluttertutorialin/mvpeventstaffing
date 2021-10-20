import 'package:json_annotation/json_annotation.dart';
part 'state_city_entity.g.dart';

@JsonSerializable(includeIfNull: true)
class StateCityEntity{
  bool? success;

  @JsonKey(name: 'data')
  Map<String, List<String>>? stateCityList;

  StateCityEntity({this.success, this.stateCityList});

  factory StateCityEntity.fromJson(Map<String, dynamic> json) =>
      _$StateCityEntityFromJson(json);
  Map<String, dynamic> toJson() => _$StateCityEntityToJson(this);
}