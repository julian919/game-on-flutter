import 'package:flutter/material.dart';
import 'package:gameon/components/metacritic_score.dart';
import 'package:gameon/colors.dart' as clr;

class GameCard extends StatelessWidget {
  final String name;
  final String releaseDate;
  final String? backgroundImg;
  final int? metacriticScore;

  const GameCard(
      {Key? key,
      required this.name,
      required this.releaseDate,
      required this.backgroundImg,
      this.metacriticScore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
            child: backgroundImg != null
                ? Image.network(
                    backgroundImg!,
                    width: 120,
                    height: 100,
                    fit: BoxFit.fill,
                  )
                : Container(
                    width: 120,
                    height: 100,
                    color: clr.greyColor,
                  ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                Text(
                  releaseDate,
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )),
          const SizedBox(
            width: 8,
          ),
          MetacriticScore(score: metacriticScore),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
