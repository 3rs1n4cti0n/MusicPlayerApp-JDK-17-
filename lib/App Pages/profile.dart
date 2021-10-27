// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber[200],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TODO: replace with user profile picture
            Center(
              child: Icon(
                Icons.account_circle_rounded,
                size: 250,
                color: Colors.amber,
              ),
            ),
            // TODO: replace with username
            Divider(height: 0, thickness: 2, color: Colors.amber[700]),
            Container(
              color: Colors.amber[300],
              width: double.infinity,
              child: Center(
                child: Text(
                  'profile name',
                  style: TextStyle(color: Colors.amber[900], fontSize: 20),
                ),
              ),
            ),
            Divider(height: 0, thickness: 2, color: Colors.amber[700]),
            Container(
              color: Colors.amber[100],
              width: double.infinity,
              height: 205,
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              // TODO: replace with user bio and have the ability to change the bio
              child: Column(
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis finibus risus. In maximus aliquet sagittis. Praesent sed ex efficitur tortor vulputate luctus. Etiam a lacus interdum neque pulvinar maximus sit amet vel nibh. Aliquam sit amet justo sed diam faucibus cursus at sed turpis.',
                    style: TextStyle(color: Colors.amber[700], fontSize: 16),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        // TODO: add edit funtion
                        onPressed: () {},
                        child: Icon(
                          Icons.edit,
                          size: 20,
                          color: Colors.amber[500],
                        )),
                  )
                ],
              ),
            ),
            Divider(
                height: 0,
                thickness: 2,
                indent: 8,
                endIndent: 8,
                color: Colors.amber[700]),
            Expanded(child: SizedBox()),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.amber[800],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, '/home');
                        },
                        child: Icon(
                          Icons.home_filled,
                          color: Colors.amber,
                          size: 50,
                        )),
                  ),
                  const VerticalDivider(
                    width: 0,
                  ),
                  Expanded(
                    child: TextButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, '/currentsong');
                        },
                        child: Icon(
                          Icons.music_note,
                          color: Colors.amber,
                          size: 50,
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
                          color: Colors.amber,
                          size: 50,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
