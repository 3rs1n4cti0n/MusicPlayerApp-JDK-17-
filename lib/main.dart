import 'package:flutter/material.dart';
import 'package:music_player_app/App%20Pages/current_song_page.dart';
import 'package:music_player_app/App%20Pages/home_page.dart';
import 'package:music_player_app/App%20Pages/loading.dart';
import 'package:music_player_app/App%20Pages/profile.dart';
import 'package:music_player_app/App%20Pages/settings_page.dart';
import 'package:music_player_app/Themes/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingPage(),
        '/home': (context) => Home(),
        '/profile': (context) => Profile(),
        '/currentsong': (context) => CurrentSong(),
        '/settings': (context) => SettingsPage(),
      },
    );
  }
}
