import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(title: 'Kidphabets', home: homeClass()));
}

// ignore: camel_case_types
class homeClass extends StatefulWidget {
  @override
  _homeClassState createState() => _homeClassState();
}

// ignore: camel_case_types
class _homeClassState extends State<homeClass> {
  int alphabetNumber = 1;
  int photoNumber = 1;
  String nameOfElement='Apple';

  
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Kid phabets')),
      backgroundColor: Colors.pink,
      ),
      body: Container(
        height: h,
        width: w,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: h / 9,
                      width: w,
                      child: Center(
                        child: Text(
                          nameOfElement,
                          style:
                              TextStyle(fontSize: 62, color: Colors.pink[400]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: h/40,),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: FlatButton(
                      onPressed: () {
                        changeAlphabet();
                      },
                      child: Image.asset(
                          'images/alphabets/alphabet$alphabetNumber.png'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: FlatButton(
                        onPressed: () {
                          changePhoto();
                        },
                        child: Image.asset('images/photos/f$photoNumber.png')),
                  )
                ],
              ),
            SizedBox(
              height: h/5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: h/20),
                    color: Colors.red[900],
                    height: h/30,
                    width: w,
                    child: Center(child: Text('Developed by Shoaib',style: TextStyle(color: Colors.white),)),
                  ),
                ),
              ],
            ),
            ],
            ),
        ),
      ),
    );
  }

  void changeAlphabet() {
    setState(() {
      alphabetNumber = alphabetNumber + 1;
      switch (alphabetNumber) {
        case 1:
          photoNumber = 1;
          nameOfElement='Apple';
          break;
        case 2:
          photoNumber = 2;
          nameOfElement='Ball';
          break;
        case 3:
          photoNumber = 3;
          nameOfElement='Cat';
          break;
        case 4:
          photoNumber = 4;
          nameOfElement='Dog';
          break;
        case 5:
          photoNumber = 5;
          nameOfElement='Egg';
          break;
        case 6:
          photoNumber = 6;
          nameOfElement='Frog';
          break;
        case 7:
          photoNumber = 7;
          nameOfElement='Giraffe';
          break;
        case 8:
          photoNumber = 8;
          nameOfElement='Horse';
          break;
        case 9:
          photoNumber = 9;
          nameOfElement='Icecream';
          break;
        case 10:
          photoNumber = 10;
          nameOfElement='Juice';
          break;
        case 11:
          photoNumber = 11;
          nameOfElement='Kite';
          break;
        case 12:
          photoNumber = 12;
          nameOfElement='Light';
          break;
        case 13:
          photoNumber = 13;
          nameOfElement='Mango';
          break;
        case 14:
          photoNumber = 14;
          nameOfElement='Noodles';
          break;
        case 15:
          photoNumber = 15;
          nameOfElement='Orange';
          break;
        case 16:
          photoNumber = 16;
          nameOfElement='Pen';
          break;
        case 17:
          photoNumber = 17;
          nameOfElement='Queen';
          break;
        case 18:
          photoNumber = 18;
          nameOfElement='Rabbit';
          break;
        case 19:
          photoNumber = 19;
          nameOfElement='Sun';
          break;
        case 20:
          photoNumber = 20;
          nameOfElement='Tiger!';
          break;
        case 21:
          nameOfElement='Umbrella';
          photoNumber = 21;
          break;
        case 22:
          photoNumber = 22;
          nameOfElement='Van';
          break;
        case 23:
          photoNumber = 23;
          nameOfElement='Water';
          break;
        case 24:
          photoNumber = 24;
          nameOfElement='X Ray';
          break;
        case 25:
          photoNumber = 25;
          nameOfElement='YoYo';
          break;
        case 26:
          photoNumber = 26;
          nameOfElement='Zoo';
          break;
        default:
          photoNumber = 1;
          nameOfElement='Apple';
      }
      while (alphabetNumber == 27) {
        alphabetNumber = 1;
      }
    });
  }

  void changePhoto() {
    setState(() {
      photoNumber = Random().nextInt(26) + 1;
    
      switch (photoNumber) {
        case 1:
          alphabetNumber = 1;
          nameOfElement='Apple';
          break;
        case 2:
          alphabetNumber = 2;
          nameOfElement='Ball';
          break;
        case 3:
          alphabetNumber = 3;
          nameOfElement='Cat';
          break;
        case 4:
          alphabetNumber = 4;
          nameOfElement='Dog';
          break;
        case 5:
          alphabetNumber = 5;
          nameOfElement='Egg';
          break;
        case 6:
          alphabetNumber = 6;
          nameOfElement='Frog';
          break;
        case 7:
          alphabetNumber = 7;
          nameOfElement='Giraffe';
          break;
        case 8:
          alphabetNumber = 8;
          nameOfElement='Horse';
          break;
        case 9:
          alphabetNumber = 9;
          nameOfElement='Icecream';
          break;
        case 10:
          alphabetNumber = 10;
          nameOfElement='Juice';
          break;
        case 11:
          alphabetNumber = 11;
          nameOfElement='Kite';
          break;
        case 12:
          alphabetNumber = 12;
          nameOfElement='Light';
          break;
        case 13:
          alphabetNumber = 13;
          nameOfElement='Mango';
          break;
        case 14:
          alphabetNumber = 14;
          nameOfElement='Noodles';
          break;
        case 15:
          alphabetNumber = 15;
          nameOfElement='Orange';
          break;
        case 16:
          alphabetNumber = 16;
          nameOfElement='Pen';
          break;
        case 17:
          alphabetNumber = 17;
          nameOfElement='Queen';
          break;
        case 18:
          alphabetNumber = 18;
          nameOfElement='Rabbit';
          break;
        case 19:
          alphabetNumber = 19;
          nameOfElement='Sun';
          break;
        case 20:
          alphabetNumber = 20;
          nameOfElement='Tiger!';
          break;
        case 21:
          alphabetNumber = 21;
          nameOfElement='Umbrella';
          break;
        case 22:
          alphabetNumber = 22;
          nameOfElement='Van';
          break;
        case 23:
          alphabetNumber = 23;
          nameOfElement='Water';
          break;
        case 24:
          alphabetNumber = 24;
          nameOfElement='X Ray';
          break;
        case 25:
          alphabetNumber = 25;
          nameOfElement='YoYo';
          break;
        case 26:
          alphabetNumber = 26;
          nameOfElement='Zoo';
          break;
        default:
          alphabetNumber = 1;
          nameOfElement='Apple';
      }
    });
  }
  
}
