import 'dart:convert';
import 'package:mvpeventstaffing/model/user_detail.dart';

import '../model/user_data_response.dart';

main() {
  String json = '''
  {
    "success": true,
    "data": {
        "ones": [{
                "id": "2",
                "username": "LM10002"
            },
            {
                "id": "6",
                "username": "LM10006"
            }
        ],
        "twos": [{
                "id": "3",
                "username": "LM10003"
            },
            {
                "id": "8",
                "username": "LM10008"
            }
        ],
        "threes": [{
            "id": "4",
            "username": "LM10004"
        }],
        "fours": [{
                "id": "5",
                "username": "LM10005"
            },
            {
                "id": "14",
                "username": "GT10014"
            }
        ]
    }
}
  ''';

  UserDataResponse dynamicJsonResponse = UserDataResponse.fromJson(jsonDecode(json));
  Iterable<List<UserDetail>> userDetailMap = dynamicJsonResponse.userDetail!.values;

  userDetailMap.forEach((userDetailIterable) {
    userDetailIterable.forEach((userDetail) {
      print(userDetail.id);
    });
  });
}
