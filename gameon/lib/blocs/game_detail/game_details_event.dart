part of 'game_details_bloc.dart';

@immutable
abstract class GameDetailEvent {
  const GameDetailEvent();
}

class LoadGameDetail extends GameDetailEvent {
  final String id;
  const LoadGameDetail(this.id);
}
