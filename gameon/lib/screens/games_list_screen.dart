import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gameon/blocs/games_list/games_list_bloc.dart';
import 'package:gameon/repositories/games_list_repository.dart';

class GamesListScreen extends StatelessWidget {
  const GamesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GamesListBloc>(
      create: (context) => GamesListBloc(
        RepositoryProvider.of<GamesListService>(context),
      )..add(const InitialLoadGameList(1)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('PS5 Games'),
        ),
        body: BlocBuilder<GamesListBloc, GamesListState>(
            builder: ((context, state) {
          if (state is GamesListLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is GamesListLoadedState) {
            return ListView.builder(
                itemCount: state.results.length,
                itemBuilder: (context, index) {
                  return Text(state.results[index].name);
                });
          } else {
            return const Text('An error occured');
          }
        })),
      ),
    );
  }
}
