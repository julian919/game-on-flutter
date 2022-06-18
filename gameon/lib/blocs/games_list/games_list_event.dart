part of 'games_list_bloc.dart';

@immutable
abstract class GamesListEvent {
  const GamesListEvent();
}

class InitialLoadGameList extends GamesListEvent {
  final int pageNo;
  const InitialLoadGameList(this.pageNo);
}

class LoadGameList extends GamesListEvent {
  final int currentPageNo;

  const LoadGameList(this.currentPageNo);
  
}
