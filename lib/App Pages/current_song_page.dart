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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
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
                              size: 50,
                              color: Theme.of(context).colorScheme.background,
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
                              size: 50,
                              color: Theme.of(context).colorScheme.background,
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
                              size: 50,
                              color: Theme.of(context).colorScheme.background,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              // TODO: replace with current song picture
              Expanded(
                flex: 10,
                child: Center(
                  child: Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Icon(
                        Icons.account_box_sharp,
                        size: 300,
                        color: Theme.of(context).colorScheme.background,
                      )),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  color: Theme.of(context).primaryColor,
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
                                  color: Theme.of(context).colorScheme.background,
                                ),
                                label: const Text('')),
                          ),
                          // TODO: replace title with music name
                          Flexible(
                              flex: 4,
                              child: Text(
                                'Music Name',
                                style: Theme.of(context).textTheme.bodyText2,
                              )),
                          Flexible(
                            flex: 1,
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.playlist_play_rounded,
                                  color: Theme.of(context).colorScheme.background,
                                ),
                                label: const Text('')),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // TODO: add music length bar thing
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
                                color: Theme.of(context).colorScheme.background,
                              ),
                              label: const Text('')),
                          // TODO: add go to previous song
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.skip_previous_rounded,
                                size: 15,
                                color: Theme.of(context).colorScheme.background,
                              ),
                              label: const Text('')),
                          // TODO: add play and pause function and change button accordingly
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_arrow,
                                size: 25,
                                color: Theme.of(context).colorScheme.background,
                              ),
                              label: const Text('')),
                          // TODO: add skip to next song
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.skip_next_rounded,
                                size: 15,
                                color:Theme.of(context).colorScheme.background,
                              ),
                              label: const Text('')),
                          // TODO: make it so a random music is played
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shuffle,
                                size: 15,
                                color: Theme.of(context).colorScheme.background,
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
