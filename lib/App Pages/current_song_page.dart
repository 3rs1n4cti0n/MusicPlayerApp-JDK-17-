import 'package:flutter/material.dart';

class CurrentSong extends StatefulWidget {
  const CurrentSong({Key? key}) : super(key: key);

  @override
  _CurrentSongState createState() => _CurrentSongState();
}

class _CurrentSongState extends State<CurrentSong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.amber[600],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context, '/home');
                          },
                          child: Icon(
                            Icons.home_filled,
                            size: 80,
                            color: Colors.amber[200],
                          )),
                    ),
                    const VerticalDivider(
                      width: 0,
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context,'/profile');
                          },
                          child: Icon(
                            Icons.account_box_outlined,
                            size: 80,
                            color: Colors.amber[200],
                          )),
                    ),
                    const VerticalDivider(
                      width: 0,
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/settings');
                          },
                          child: Icon(
                            Icons.settings,
                            size: 80,
                            color: Colors.amber[200],
                          )),
                    ),
                  ],
                ),
              ),
              // TODO: replace with current song picture
              Container(
                  color: Colors.amber[300],
                  height: 300,
                  width: double.infinity,
                  child: Icon(
                    Icons.account_box_sharp,
                    size: 300,
                    color: Colors.amber[900],
                  )),
              Container(height: 40,color: Colors.amber[300],),
              Flexible(
                child: Container(
                  color: Colors.amber[500],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 1,
                            // TODO: make a favourite list
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.amber[100],
                                ),
                                label: const Text('')),
                          ),
                          // TODO: replace title with music name
                          Flexible(
                              flex: 4,
                              child: Text(
                                'Music Name',
                                style: TextStyle(
                                    color: Colors.amber[900],
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic),
                              )),
                          Flexible(
                            flex: 1,
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.playlist_play_rounded,
                                  color: Colors.amber[100],
                                  size: 30,
                                ),
                                label: const Text('')),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // TODO: add music lenght bar thing
                        children: const [
                          // TODO: add some widgets
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
                                size: 30,
                                color: Colors.amber[100],
                              ),
                              label: const Text('')),
                          // TODO: add go to previous song
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.skip_previous_rounded,
                                size: 30,
                                color: Colors.amber[100],
                              ),
                              label: const Text('')),
                          // TODO: add play and pause function and change button accordingly
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_arrow,
                                size: 50,
                                color: Colors.amber[100],
                              ),
                              label: const Text('')),
                          // TODO: add skip to next song
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.skip_next_rounded,
                                size: 30,
                                color: Colors.amber[100],
                              ),
                              label: const Text('')),
                          // TODO: make it so a random music is played
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shuffle,
                                size: 30,
                                color: Colors.amber[100],
                              ),
                              label: const Text(''))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
