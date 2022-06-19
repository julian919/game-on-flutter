import 'dart:convert';

import 'package:gameon/functions/api.dart';
import 'package:gameon/models/game_details_model.dart';
import 'package:gameon/models/games_list_model.dart';
import 'package:intl/intl.dart';

class GamesService {
  var api = Network();

  Future<GamesList> getLatestGames(String pageNo) async {
    // print('yo wadahek');
    var currentDate = DateTime.now();
    var formattedCurrentDate = DateFormat('yyyy-MM-dd').format(currentDate);
    var previousYearDate =
        DateTime(currentDate.year - 1, currentDate.month, currentDate.day);
    var formattedPreviousYearDate =
        DateFormat('yyyy-MM-dd').format(previousYearDate);
    final response = await api.getData('?page=' +
        pageNo +
        '&page_size=20&platforms=187&dates=' +
        formattedPreviousYearDate +
        ',' +
        formattedCurrentDate +
        '&ordering=-released');

    if (response.statusCode == 200) {
      // print(response.body);
      return GamesList.fromJson(jsonDecode(response.body));
    }

    throw Exception('Failed to load latest PS5 games list');
  }

  Future<GameDetails> getGameDetails(String id) async {
    print('enter');
    print(id);
    final response = await api.getData('/' + id + '?');
    if (response.statusCode == 200) {
      return GameDetails.fromJson(jsonDecode(response.body));
    }

    print(response.statusCode);

    throw Exception('Failed to load game detail of id :' + id);
  }
}
