import 'package:flutter/material.dart';
import 'main.dart';

class Deck extends StatelessWidget {
  @override
  List<String> next = ["Nemesis", "Nemesis", "1/2", "1/2", "3/4", "3/4"]
    ..shuffle();

  List<String> previous = ["empty"];

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ListView(children: [
            Text(next.first, style: Theme.of(context).textTheme.display1),
            Text(previous.last, style: Theme.of(context).textTheme.display1),
            Row(children: <Widget>[
              FlatButton.icon(
                color: Colors.red,
                icon: Icon(Icons.arrow_back_ios), //`Icon` to display
                label: Text(''), //`Text` to display
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),
              FlatButton.icon(
                color: Colors.red,
                icon: Icon(Icons.arrow_forward_ios), //`Icon` to display
                label: Text(''), //`Text` to display
                onPressed: () {
                  previous.add(next.first);
                },
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
