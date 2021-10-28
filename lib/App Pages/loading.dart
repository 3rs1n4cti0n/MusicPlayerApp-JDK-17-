import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  // TODO: write code to get data from APIs, local files, urls
  void getData() async{
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushNamed(context, '/home');
  }
  @override
  void initState() {
    // TODO: initialize data from api and local files
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SpinKitWave(
              color: Theme.of(context).colorScheme.primary,
              size: 80,
            ),
            const SizedBox(height: 30,),
            Align(
              alignment: Alignment.center,
              child: Text('Loading',style: Theme.of(context).textTheme.bodyText1),
            )
          ],
        ),
      ),
    );
  }
}
