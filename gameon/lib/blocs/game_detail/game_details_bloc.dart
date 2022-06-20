import 'package:bloc/bloc.dart';
import 'package:gameon/services/games_service.dart';
import 'package:meta/meta.dart';

part 'game_details_event.dart';
part 'game_details_state.dart';

class GameDetailsBloc extends Bloc<GameDetailEvent, GameDetailsState> {
  final GamesService _gamesService;
  GameDetailsBloc(this._gamesService) : super(GameDetailsLoadingState()) {
    on<LoadGameDetail>((event, emit) async {
      try {
        final gameDetails = await _gamesService.getGameDetails(event.id);
        String otherPlatforms = '';
        for (var platform in gameDetails.platforms) {
          otherPlatforms += platform.platform.name + ', ';
        }
        String genres = '';
        for (var genre in gameDetails.genres) {
          genres += genre.name + ', ';
        }

        String developers = '';
        for (var developer in gameDetails.developers) {
          developers += developer.name + ', ';
        }

        String publishers = '';
        for (var publisher in gameDetails.publishers) {
          publishers += publisher.name + ', ';
        }
        emit(GameDetailsLoadedState(
            gameDetails.name,
            gameDetails.descriptionRaw,
            gameDetails.backgroundImage,
            otherPlatforms.substring(0, otherPlatforms.length - 2),
            genres.substring(0, genres.length - 2),
            developers.substring(0, developers.length - 2),
            publishers.substring(0, publishers.length - 2),
            gameDetails.metacritic,
            gameDetails.released));
      } catch (error) {
        emit(GameDetailsFailedLoadingState(error.toString()));
      }
    });
  }
}
