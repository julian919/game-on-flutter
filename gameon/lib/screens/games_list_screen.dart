import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gameon/blocs/games_list/games_list_bloc.dart';
import 'package:gameon/components/game_card.dart';
import 'package:gameon/components/page_navigator_button.dart';
import 'package:gameon/screens/game_detail_screen.dart';
import 'package:gameon/services/games_service.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class GamesListScreen extends StatelessWidget {
  const GamesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GamesListBloc>(
      create: (context) => GamesListBloc(
        RepositoryProvider.of<GamesService>(context),
      )..add(const InitialLoadGameList(1)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('PS5 Games'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<GamesListBloc, GamesListState>(
              builder: ((context, state) {
            if (state is GamesListLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is GamesListLoadedState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    flex: 8,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.results.length,
                        itemBuilder: (context, index) {
                          var currentGame = state.results[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => GameDetailScreen(
                                    id: currentGame.id.toString(),
                                  ),
                                ),
                              );
                            },
                            child: GameCard(
                              backgroundImg: currentGame.backgroundImage,
                              name: currentGame.name,
                              releaseDate: currentGame.released,
                              metacriticScore: currentGame.metacritic,
                            ),
                          );
                          // Text(state.results[index].name);
                        }),
                  ),
                  // const Spacer(flex: 1,),
                  Flexible(
                    // flex: 1,
                    // height: 30,
                    // fit: FlexFit.,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: ScrollablePositionedList.builder(
                          // physics: ScrollPhysics(),
                          // addAutomaticKeepAlives: true,
                          initialScrollIndex:
                              int.parse(state.currentPageNo) - 1,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: state.totalPages,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                context
                                    .read<GamesListBloc>()
                                    .add(LoadGameList(index + 1));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: PageNavigatorButton(
                                    pageNo: (index + 1).toString(),
                                    active: state.currentPageNo ==
                                        (index + 1).toString()),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              );
            } else {
              return const Text('An error occured');
            }
          })),
        ),
      ),
    );
  }
}
