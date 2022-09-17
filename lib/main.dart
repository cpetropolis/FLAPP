import 'package:flutter/material.dart';
import 'dart:io';
import 'components/buttons/rounded_button.dart';
import 'components/design/constants.dart';
import 'components/screens/practice_cases.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLAPP - Flap Assessment App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'FLAPP - Flap Assessment App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          height: 1000,
          width: 600,
          child: ListView(
            addRepaintBoundaries: false,
            shrinkWrap: true,
            padding: EdgeInsets.all(15),
            children: [
              Image.file(File(
                  '/Users/christianpetropolis/StudioProjects/FLAPP/lib/images/uofm logo.png')),
              RoundedButton(
                  height: 60,
                  colour: submitBoxColor,
                  cardChild: Text(
                    'How to use app',
                    style: buttonTextStyle,
                  ),
                  onPress: () => print('hi')),
              RoundedButton(
                  height: 60,
                  colour: submitBoxColor,
                  cardChild: Text(
                    'Microsurgery Basics',
                    style: buttonTextStyle,
                  ),
                  onPress: () => print('hi')),
              RoundedButton(
                  height: 60,
                  colour: submitBoxColor,
                  cardChild: Text(
                    'Tutorials',
                    style: buttonTextStyle,
                  ),
                  onPress: () => print('hi')),
              RoundedButton(
                height: 60,
                colour: submitBoxColor,
                cardChild: Text(
                  'Practice Cases',
                  style: buttonTextStyle,
                ),
                onPress: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PracticeCases(),
                  ),
                ),
              ),
              RoundedButton(
                  height: 60,
                  colour: submitBoxColor,
                  cardChild: Text(
                    'References',
                    style: buttonTextStyle,
                  ),
                  onPress: () => print('hi')),
            ],
          ),
        ),
      ),
    );
  }
}

//onPress: () => Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => ResidentMeeting1(
//             residentReviewIndex: residentReview.reviewIndex,
//           ),
//         ),
//       ),
