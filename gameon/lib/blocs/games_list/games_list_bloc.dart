import 'package:bloc/bloc.dart';
import 'package:gameon/models/games_list_model.dart';
import 'package:gameon/services/games_service.dart';
import 'package:meta/meta.dart';

part 'games_list_event.dart';
part 'games_list_state.dart';

class GamesListBloc extends Bloc<GamesListEvent, GamesListState> {
  final GamesService _gamesService;

  GamesListBloc(this._gamesService) : super(GamesListLoadingState()) {
    on<InitialLoadGameList>((event, emit) async {
      try {
        final gamesList =
            await _gamesService.getLatestGames(event.pageNo.toString());
        //only calc total pages on init
        int totalPages = (gamesList.count / 20).ceil();
        emit(GamesListLoadedState(
            event.pageNo.toString(), totalPages, gamesList.results));
      } catch (error) {
        emit(GamesListFailLoadingState(error.toString()));
      }
    });
    on<LoadGameList>((event, emit) async {
      int totalPages = 0;
      if (state is GamesListLoadedState) {
        final state = this.state as GamesListLoadedState;
        totalPages = state.totalPages;
      }
      emit(GamesListLoadingState());
      try {
        final gamesList =
            await _gamesService.getLatestGames(event.currentPageNo.toString());

        emit(GamesListLoadedState(
            event.currentPageNo.toString(), totalPages, gamesList.results));
      } catch (error) {
        emit(GamesListFailLoadingState(error.toString()));
      }
    });
  }
}
