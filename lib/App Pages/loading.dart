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
    await Future.delayed(Duration(seconds: 5));
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
      backgroundColor: Colors.amber[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SpinKitWave(
              color: Colors.white,
              size: 80,
            ),
            SizedBox(height: 30,),
            Align(
              alignment: Alignment.center,
              child: Text('Loading',style: TextStyle(
                fontSize: 24,
                color: Colors.white
              ),),
            )
          ],
        ),
      ),
    );
  }
}
