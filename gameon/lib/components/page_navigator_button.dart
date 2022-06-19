import 'dart:ffi';
import 'package:gameon/colors.dart' as clr;
import 'package:flutter/material.dart';

class PageNavigatorButton extends StatelessWidget {
  final String pageNo;
  final bool active;
  const PageNavigatorButton(
      {Key? key, required this.pageNo, required this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        // height: 30,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: active ? clr.primaryBlueColor : clr.greyColor ,
            style: BorderStyle.solid,
            width: 1.0,
          ),
          color: active ? clr.primaryBlueColor : clr.whiteColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          pageNo,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: active ? clr.whiteColor : clr.primaryBlueColor),
        ),
      ),
    );
  }
}
