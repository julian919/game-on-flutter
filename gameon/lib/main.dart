import 'package:flutter/material.dart';
import 'package:gameon/colors.dart' as clr;
import 'package:gameon/screens/games_list_screen.dart';
import 'package:gameon/services/games_service.dart';
import 'package:gameon/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider(
        create: (context) => GamesService(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PS5 Games',
      theme: ThemeData(
        primaryColor: clr.primaryBlueColor,
        appBarTheme: const AppBarTheme(backgroundColor: clr.primaryBlueColor),
        textTheme: GoogleFonts.interTextTheme().copyWith(
          bodyText1: GoogleFonts.inter(textStyle: descTextStyle),
          bodyText2: GoogleFonts.inter(textStyle: bigDescTextStyle),
          headline1: GoogleFonts.roboto(textStyle: semiBigDescTextStyle),
          subtitle1: GoogleFonts.inter(textStyle: smallTitleTextStyle),
        ),
      ),
      home: const GamesListScreen(),
    );
  }
}