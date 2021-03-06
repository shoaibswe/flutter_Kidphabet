import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sizes_helpers.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MaterialApp(title: 'Kidphabets', home: homeClass()));

// ignore: camel_case_types
class homeClass extends StatefulWidget {
  @override
  _homeClassState createState() => _homeClassState();
}

// ignore: camel_case_types
class _homeClassState extends State<homeClass> {
  static AudioCache player = AudioCache();
  int alphabetNumber = 1;
  int photoNumber = 1;
  int soundNumber = 1;
  String nameOfElement = 'Apple';
  bool initialState = false;

  @override
  Widget build(BuildContext context) {
    splashSound();

    return Scaffold(
      appBar: AppBar(
        title: Text(' Kidphabets'),
        backgroundColor: Colors.pink[400],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 6,
                child: Container(
                  width: displayWidth(context),
                  child: Center(
                    child: Text(
                      nameOfElement,
                      style: TextStyle(
                          fontSize: displayWidth(context) * .15,
                          color: Colors.pink[500]),
                    ),
                  ),
                ),
              ),
              expandedForPhoto(),
              expandedForAlphabet(),
              shuffleAll(),
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
              footer(),
            ],
          ),
        ),
      ),
    );
  }

  Expanded expandedForAlphabet() {
    return Expanded(
      flex: 12,
      child: FlatButton(
        onPressed: () {
          changeAplhabetNum();
          playLetter();
        },
        child: Image.asset(
          'images/alphabets/alphabet$alphabetNumber.png',
          height: displayHeight(context) * .3,
        ),
      ),
    );
  }

  Expanded expandedForPhoto() {
    return Expanded(
      flex: 10,
      child: FlatButton(
        onPressed: () {
          changeAplhabetNumDown();
          playLetter();
        },
        child: Image.asset(
          'images/photos/f$photoNumber.png',
          height: displayHeight(context) * .3,
        ),
      ),
    );
  }

  Expanded shuffleAll() {
    return Expanded(
        flex: 4,
        child: FlatButton(
          onPressed: () {
            changePhotoNum();
            playLetter();
          },
          child: Icon(
            Icons.shuffle,
            size: displayHeight(context) * .1,
            color: Colors.pink[100],
          ),
        ));
  }

  Expanded footer() {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red[900],
        height: displayHeight(context) * .03,
        width: displayWidth(context),
        child: Center(
            child: Text(
          'Developed by Shoaib',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }

  void changeTitleAndSound() {
    setState(() {
      if (alphabetNumber == 1 || photoNumber == 1) {
        nameOfElement = 'Apple';
        soundNumber = 1;
      } else if (alphabetNumber == 2 || photoNumber == 2) {
        nameOfElement = 'Ball';
        soundNumber = 2;
      } else if (alphabetNumber == 3 || photoNumber == 3) {
        nameOfElement = 'Cat';
        soundNumber = 3;
      } else if (alphabetNumber == 4 || photoNumber == 4) {
        nameOfElement = 'Dog';
        soundNumber = 4;
      } else if (alphabetNumber == 5 || photoNumber == 5) {
        nameOfElement = 'Egg';
        soundNumber = 5;
      } else if (alphabetNumber == 6 || photoNumber == 6) {
        nameOfElement = 'Frog';
        soundNumber = 6;
      } else if (alphabetNumber == 7 || photoNumber == 7) {
        nameOfElement = 'Giraffe';
        soundNumber = 7;
      } else if (alphabetNumber == 8 || photoNumber == 8) {
        nameOfElement = 'Horse';
        soundNumber = 8;
      } else if (alphabetNumber == 9 || photoNumber == 9) {
        nameOfElement = 'Icecream';
        soundNumber = 9;
      } else if (alphabetNumber == 10 || photoNumber == 10) {
        nameOfElement = 'Juice';
        soundNumber = 10;
      } else if (alphabetNumber == 11 || photoNumber == 11) {
        nameOfElement = 'Kite';
        soundNumber = 11;
      } else if (alphabetNumber == 12 || photoNumber == 12) {
        nameOfElement = 'Light';
        soundNumber = 12;
      } else if (alphabetNumber == 13 || photoNumber == 13) {
        nameOfElement = 'Mango';
        soundNumber = 13;
      } else if (alphabetNumber == 14 || photoNumber == 14) {
        nameOfElement = 'Noodles';
        soundNumber = 14;
      } else if (alphabetNumber == 15 || photoNumber == 15) {
        nameOfElement = 'Orange';
        soundNumber = 15;
      } else if (alphabetNumber == 16 || photoNumber == 16) {
        nameOfElement = 'Pen';
        soundNumber = 16;
      } else if (alphabetNumber == 17 || photoNumber == 17) {
        nameOfElement = 'Queen';
        soundNumber = 17;
      } else if (alphabetNumber == 18 || photoNumber == 18) {
        nameOfElement = 'Rabbit';
        soundNumber = 18;
      } else if (alphabetNumber == 19 || photoNumber == 19) {
        nameOfElement = 'Sun';
        soundNumber = 19;
      } else if (alphabetNumber == 20 || photoNumber == 20) {
        nameOfElement = 'Tiger!';
        soundNumber = 20;
      } else if (alphabetNumber == 21 || photoNumber == 21) {
        nameOfElement = 'Umbrella';
        soundNumber = 21;
      } else if (alphabetNumber == 22 || photoNumber == 22) {
        nameOfElement = 'Van';
        soundNumber = 22;
      } else if (alphabetNumber == 23 || photoNumber == 23) {
        nameOfElement = 'Water';
        soundNumber = 23;
      } else if (alphabetNumber == 24 || photoNumber == 24) {
        nameOfElement = 'X Ray';
        soundNumber = 24;
      } else if (alphabetNumber == 25 || photoNumber == 25) {
        nameOfElement = 'YoYo';
        soundNumber = 25;
      } else if (alphabetNumber == 26 || photoNumber == 26) {
        nameOfElement = 'Zoo';
        soundNumber = 26;
      } else {
        nameOfElement = 'Apple';
        soundNumber = 1;
      }
    });
  }

  void changeAplhabetNum() {
    setState(() {
      alphabetNumber = alphabetNumber + 1;
      for (int i = 1; i <= alphabetNumber; i++) {
        while (alphabetNumber == 27) {
          alphabetNumber = 1;
        }
        photoNumber = alphabetNumber;
        changeTitleAndSound();
      }
    });
  }

  void changeAplhabetNumDown() {
    setState(() {
      if (alphabetNumber <= 1) {
        alphabetNumber = 26;
        photoNumber = alphabetNumber;
        changeTitleAndSound();
      } else {
        alphabetNumber = alphabetNumber - 1;
        photoNumber = alphabetNumber;
        changeTitleAndSound();
      }
    });
  }

  void changePhotoNum() {
    setState(() {
      photoNumber = Random().nextInt(26) + 1;
      alphabetNumber = photoNumber;
      changeTitleAndSound();
    });
  }

  void playLetter() {
    final player = AudioCache();
    player.play('s$soundNumber.m4a');
  }

  void splashSound() {
    if (initialState == false) {
      player.play('s1.m4a');
      initialState = true;
    }
  }
}
