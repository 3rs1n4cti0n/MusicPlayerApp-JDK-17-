import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(
              color: Colors.amber[50],
            ),
          ),
          backgroundColor: Colors.amber,
          elevation: 2,
        ),
        backgroundColor: Colors.amber[200],
        body: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              index++;
              return SizedBox(
                width: double.infinity,
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'This is setting no: $index',
                              style: TextStyle(
                                  color: Colors.amber[900], fontSize: 18),
                            )),
                      ),
                    ),
                    const Divider(
                      height: 0,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
