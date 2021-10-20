import 'dart:convert';
import '../entity/state_city/state_city_entity.dart';

main(){
  String json = '''
  {
    "success": true,
    "data": {
        "Pennsylvania": [
            "Philadelphia",
            "Pittsburgh",
            "Allentown",
            "Erie",
            "Reading",
            "Scranton",
            "Bethlehem",
            "Lancaster",
            "Harrisburg",
            "Altoona",
            "York",
            "State College",
            "Wilkes-Barre"
        ],
        "Vermont": [
            "Burlington"
        ]
    }
}
  ''';

  var stateCityEntity = StateCityEntity.fromJson(jsonDecode(json));
  stateCityEntity.stateCityList!.forEach((key, value) {
    print('$key ${value.length}');
  });
}