import 'package:bloc/bloc.dart';
import 'package:gameon/models/games_list_model.dart';
import 'package:gameon/repositories/games_list_repository.dart';
import 'package:meta/meta.dart';

part 'games_list_event.dart';
part 'games_list_state.dart';

class GamesListBloc extends Bloc<GamesListEvent, GamesListState> {
  final GamesListService _gamesListService;

  GamesListBloc(this._gamesListService) : super(GamesListLoadingState()) {
    on<InitialLoadGameList>((event, emit) async {
      final gamesList =
          await _gamesListService.getLatestGames(event.pageNo.toString());
      //only calc total pages on init
      int totalPages = (gamesList.count / 20).ceil();
      emit(GamesListLoadedState(
          event.pageNo.toString(), totalPages, gamesList.results));
    });
    on<LoadGameList>((event, emit) async {
      emit(GamesListLoadingState());
      final gamesList = await _gamesListService
          .getLatestGames(event.currentPageNo.toString());
      if (state is GamesListLoadedState) {
        final state = this.state as GamesListLoadedState;
        emit(GamesListLoadedState(event.currentPageNo.toString(),
            state.totalPages, gamesList.results));
      }
    });
  }
}
