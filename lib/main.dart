import 'package:flutter/material.dart';
import 'package:music_player_app/App%20Pages/current_song_page.dart';
import 'package:music_player_app/App%20Pages/home_page.dart';
import 'package:music_player_app/App%20Pages/loading.dart';
import 'package:music_player_app/App%20Pages/profile.dart';
import 'package:music_player_app/App%20Pages/settings_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const LoadingPage(),
      '/home': (context) => const Home(),
      '/profile': (context) => const Profile(),
      '/currentsong': (context) => const CurrentSong(),
      '/settings': (context) => SettingsPage(),
    },
  ));
}
