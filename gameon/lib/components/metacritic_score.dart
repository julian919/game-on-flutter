import 'package:flutter/material.dart';
import 'package:gameon/colors.dart' as clr;

class MetacriticScore extends StatelessWidget {
  final int? score;
  const MetacriticScore({Key? key, this.score}) : super(key: key);

  Color getScoreColor(int? score) {
    if (score == null) {
      return clr.grey2Color;
    }
    if (score > 75) {
      return clr.greenColor;
    }
    if (score > 49) {
      return clr.yellowColor;
    }
    return clr.redColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      decoration: BoxDecoration(
        color: getScoreColor(score),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            score != null ?
            score.toString() : '?',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: clr.whiteColor,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
