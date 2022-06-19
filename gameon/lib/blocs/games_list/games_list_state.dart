part of 'games_list_bloc.dart';

@immutable
abstract class GamesListState {
  const GamesListState();
}

class GamesListLoadingState extends GamesListState {
}

class GamesListLoadedState extends GamesListState {
  final String currentPageNo;
  final int totalPages;
  final List<Results> results;
  const GamesListLoadedState(this.currentPageNo, this.totalPages, this.results);
}
