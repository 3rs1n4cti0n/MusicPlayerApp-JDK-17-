// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber[200],
        body: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    child: Container(
                      color: Colors.amber,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/profile');
                              },
                              child: Icon(Icons.account_box_outlined,
                                  color: Colors.amber[200]),
                            ),
                          ),
                          Divider(
                            height: 0,
                            color: Colors.grey[400],
                            thickness: 0,
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/currentsong');
                              },
                              child: Icon(Icons.music_note,
                                  color: Colors.amber[200]),
                            ),
                          ),
                          Divider(
                            height: 0,
                            color: Colors.grey[400],
                            thickness: 0,
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/settings');
                              },
                              child: Icon(Icons.settings,
                                  color: Colors.amber[200]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.amber[400],
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Albums',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.amber[100],
                                        ),
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: 0,
                                    color: Colors.grey[400],
                                    thickness: 0,
                                  ),
                                  Expanded(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Playlists',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.amber[100],
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: 0,
                                    color: Colors.grey[400],
                                    thickness: 0,
                                  ),
                                  Expanded(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Songs',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.amber[100],
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 8,
                            child: Container(
                              height: double.infinity,
                              color: Colors.amber[300],
                              child: ListView.builder(
                                  itemCount: 150,
                                  itemBuilder: (context, index) {
                                    index++;
                                    return Container(
                                      width: double.infinity,
                                      color: Colors.amber[100],
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.ac_unit,
                                                  color: Colors.amber[800],
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      // TODO: replace with music name
                                                      'this is music $index',

                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color:
                                                            Colors.amber[800],
                                                      ),
                                                    ),
                                                    Text(
                                                      // TODO: replace with album name
                                                      'Album',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.amber[800],
                                                          fontSize: 10,
                                                          fontStyle:
                                                              FontStyle.italic),
                                                    ),
                                                  ],
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      // TODO: add the actual time for the song
                                                      Text('3:15',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .amber[500],
                                                              fontSize: 10)),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            height: 0,
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Divider(
              height: 0,
              color: Colors.amber[900],
            ),
            Container(
              color: Colors.amber[500],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        flex: 1,
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              size: 20,
                              color: Colors.amber[100],
                            ),
                            label: Text('')),
                      ),
                      // TODO: replace title with music name
                      Flexible(
                          flex: 4,
                          child: Text(
                            'Music Name',
                            style: TextStyle(
                                color: Colors.amber[900],
                                fontSize: 14,
                                fontStyle: FontStyle.italic),
                          )),
                      Flexible(
                        flex: 1,
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.playlist_play_rounded,
                              color: Colors.amber[100],
                            ),
                            label: Text('')),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // TODO: add music lenght bar thing
                    children: const [
                      // add some widgets
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // TODO: add a loop option
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.loop_rounded,
                            size: 15,
                            color: Colors.amber[100],
                          ),
                          label: Text('')),
                      // TODO: add go to previous song
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_previous_rounded,
                            size: 15,
                            color: Colors.amber[100],
                          ),
                          label: Text('')),
                      // TODO: add play and pause function and change button accordingly
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow,
                            size: 25,
                            color: Colors.amber[100],
                          ),
                          label: Text('')),
                      // TODO: add skip to next song
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_next_rounded,
                            size: 15,
                            color: Colors.amber[100],
                          ),
                          label: Text('')),
                      // TODO: make it so a random music is played
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shuffle,
                            size: 15,
                            color: Colors.amber[100],
                          ),
                          label: Text(''))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
