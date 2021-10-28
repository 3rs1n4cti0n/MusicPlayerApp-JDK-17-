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
        body: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Flexible(
                    child: Container(
                      color: Theme.of(context).primaryColor,
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
                                  color: Theme.of(context).colorScheme.background,),
                            ),
                          ),
                          Divider(
                            height: 0,
                            color:Theme.of(context).dividerColor,
                            thickness: 0,
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/currentsong');
                              },
                              child: Icon(Icons.music_note,
                                  color: Theme.of(context).colorScheme.background,),
                            ),
                          ),
                          Divider(
                            height: 0,
                            color: Theme.of(context).dividerColor,
                            thickness: 0,
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/settings');
                              },
                              child: Icon(Icons.settings,
                                  color: Theme.of(context).colorScheme.background,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  VerticalDivider(
                    width: 0,
                    color: Theme.of(context).dividerColor,
                    thickness: 0,
                  ),
                  Flexible(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              color: Theme.of(context).primaryColor,
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
                                        style: Theme.of(context).textTheme.headline4,
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: 0,
                                    color: Theme.of(context).dividerColor,
                                    thickness: 0,
                                  ),
                                  Expanded(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Playlists',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.headline4,
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    width: 0,
                                    color: Theme.of(context).dividerColor,
                                    thickness: 0,
                                  ),
                                  Expanded(
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Songs',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.headline4,
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
                              color: Theme.of(context).colorScheme.primary,
                              child: RawScrollbar(
                                thickness: 5,
                                thumbColor: Theme.of(context).colorScheme.background,
                                isAlwaysShown: true,
                                radius: const Radius.circular(30),
                                child: ListView.builder(
                                    itemCount: 150,
                                    itemBuilder: (context, index) {
                                      index++;
                                      return Container(
                                        width: double.infinity,
                                        color: Theme.of(context).scaffoldBackgroundColor,
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
                                                    color: Theme.of(context).colorScheme.background,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        // TODO: replace with music name
                                                        'this is music $index',

                                                        style: Theme.of(context).textTheme.bodyText2,
                                                      ),
                                                      Text(
                                                        // TODO: replace with album name
                                                        'Album',
                                                        style: Theme.of(context).textTheme.headline3,
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
                                                            style: Theme.of(context).textTheme.headline3),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              height: 0,
                                              color: Theme.of(context).dividerColor,
                                            )
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Divider(
              height: 0,
              color: Theme.of(context).dividerColor,
            ),
            Container(
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
          ],
        ),
      ),
    );
  }
}
