import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gameon/blocs/game_detail/game_details_bloc.dart';
import 'package:gameon/components/metacritic_score.dart';
import 'package:gameon/services/games_service.dart';
import 'package:gameon/colors.dart' as clr;

class GameDetailScreen extends StatefulWidget {
  final String id;
  const GameDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<GameDetailScreen> createState() => _GameDetailScreenState();
}

class _GameDetailScreenState extends State<GameDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GameDetailsBloc>(
        create: (context) => GameDetailsBloc(
              RepositoryProvider.of<GamesService>(context),
            )..add(LoadGameDetail(widget.id)),
        child: Scaffold(
          body: BlocBuilder<GameDetailsBloc, GameDetailsState>(
            builder: (context, state) {
              if (state is GameDetailsLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is GameDetailsLoadedState) {
                return NestedScrollView(
                  headerSliverBuilder: ((context, innerBoxIsScrolled) => [
                        SliverAppBar(
                          floating: true,
                          pinned: true,
                          expandedHeight: 240,
                          flexibleSpace: FlexibleSpaceBar(
                            title: Text(state.name,
                                style:
                                    TextStyle(backgroundColor: clr.grey3Color)),
                            background: state.backgroundImage != null
                                ? Image.network(
                                    state.backgroundImage!,
                                    fit: BoxFit.cover,
                                  )
                                : Container(
                                    color: Colors.grey,
                                  ),
                          ),
                        ),
                      ]),
                  body: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Release Date',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      state.released!,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Other Platforms',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      state.platforms,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    // state.platforms.forEach((platform) { return Text(platform)});
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      'Metacritic\nScore',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                              fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    MetacriticScore(
                                      score: state.metacritic,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            color: clr.grey2Color,
                            height: 32,
                          ),
                          Column(
                            children: [
                              Text(
                                'Genres',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                state.genres,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                'Developers',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                state.developers,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                'Publishers',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                state.publishers,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              const Divider(
                                color: clr.grey2Color,
                                height: 32,
                              ),
                              Text(
                                'Description',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                state.description,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }
              if (state is GameDetailsFailedLoadingState) {
                return AlertDialog(
                  title: const Text('Error'),
                  content: Text(state.message),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Go back'))
                  ],
                );
              } else {
                return const Text('Unexpected error occured');
              }
            },
          ),
        ));
  }
}
