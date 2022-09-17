import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flapp/components/design/rounded_box.dart';
import 'package:flapp/components/buttons/rounded_button.dart';
import 'package:flapp/components/design/constants.dart';

class HowToUseApp extends StatefulWidget {
  @override
  _HowToUseAppState createState() => _HowToUseAppState();
}

class _HowToUseAppState extends State<HowToUseApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Practice Cases'),
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
              RoundedButton(
                  height: 200,
                  colour: submitBoxColor,
                  cardChild: Column(children: [
                    Text(
                      'Case 1:',
                      style: buttonTextStyle,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.file(
                        File(
                            '/Users/christianpetropolis/StudioProjects/FLAPP/lib/images/Screen Shot 2022-09-15 at 1.10.09 AM.png'),
                      ),
                    ),
                  ]),
                  onPress: () => print('hi')),
              RoundedButton(
                  height: 200,
                  colour: submitBoxColor,
                  cardChild: Column(children: [
                    Text(
                      'Case 2:',
                      style: buttonTextStyle,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.file(
                        File(
                            '/Users/christianpetropolis/StudioProjects/FLAPP/lib/images/Screen Shot 2022-09-15 at 1.08.57 AM.png'),
                      ),
                    ),
                  ]),
                  onPress: () => print('hi')),
              RoundedButton(
                  height: 200,
                  colour: submitBoxColor,
                  cardChild: Column(children: [
                    Text(
                      'Case 3:',
                      style: buttonTextStyle,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.file(
                        File(
                            '/Users/christianpetropolis/StudioProjects/FLAPP/lib/images/Screen Shot 2022-09-15 at 1.09.41 AM.png'),
                      ),
                    ),
                  ]),
                  onPress: () => print('hi')),
              RoundedButton(
                  height: 200,
                  colour: submitBoxColor,
                  cardChild: Column(children: [
                    Text(
                      'Case 4:',
                      style: buttonTextStyle,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image.file(
                        File(
                            '/Users/christianpetropolis/StudioProjects/FLAPP/lib/images/Screen Shot 2022-09-15 at 1.09.16 AM.png'),
                      ),
                    ),
                  ]),
                  onPress: () => print('hi')),
            ],
          ),
        ),
      ),
    );
  }
}
