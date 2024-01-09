import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Getwidget Loading Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(30)),
            SizedBox(height: 10),
            GFLoader(
              duration: Duration(seconds: 3),
              type: GFLoaderType.ios,
            ),
            SizedBox(height: 80),
            GFProgressBar(
              percentage: 0.5,
              width: 200,
              lineHeight: 30,
              radius: 90,
              type: GFProgressType.linear,
              backgroundColor: Colors.black26,
              progressBarColor: GFColors.DANGER,
            )
          ],
        ),
      ),
    );
  }
}
