part of 'game_details_bloc.dart';

@immutable
abstract class GameDetailsState {
  const GameDetailsState();
}

class GameDetailsLoadingState extends GameDetailsState {}

class GameDetailsFailedLoadingState extends GameDetailsState {
  final String message;
  const GameDetailsFailedLoadingState(this.message);
}

class GameDetailsLoadedState extends GameDetailsState {
  final String name;
  final String description;
  final String? backgroundImage;
  final String platforms;
  final String genres;
  final String developers;
  final String publishers;
  final int? metacritic;
  final String? released;

  const GameDetailsLoadedState(
    this.name,
    this.description,
    this.backgroundImage,
    this.platforms,
    this.genres,
    this.developers,
    this.publishers,
    this.metacritic,
    this.released
  );
}
