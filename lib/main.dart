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
  double h;
  double w;
  int alphabetNumber = 1;
  int photoNumber = 1;
  String nameOfElement = 'Apple';
  
  @override
  Widget build(BuildContext context) {
    h = MediaQuery
        .of(context)
        .size
        .height;
    w = MediaQuery
        .of(context)
        .size
        .width;
    
    return Scaffold(
      appBar: AppBar(title: Text(' Kid phabets'),
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
              SizedBox(height: h / 40,),
              Row(
                children: <Widget>[
                  expandedForAlphabet(),
                  expandedForPhoto(),
                ],
              ),
              SizedBox(
                height: h / 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                footer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Expanded expandedForAlphabet() {
    return Expanded(
      flex: 2,
      child: FlatButton(
        onPressed: () {
          changeAplhabetNum();
        },
        child: Image.asset(
            'images/alphabets/alphabet$alphabetNumber.png'),
      ),
    );
  }
  
  Expanded expandedForPhoto() {
    return Expanded(
      flex: 2,
      child: FlatButton(
          onPressed: () {
            changePhotoNum();
          },
          child: Image.asset('images/photos/f$photoNumber.png')),
    );
  }
  
  void changeTitleAndSound() {
    setState(() {
      if(alphabetNumber==1 || photoNumber==1){
        nameOfElement = 'Apple';
      }
      else if (alphabetNumber==2 || photoNumber==2){
        nameOfElement = 'Ball';
      }else if (alphabetNumber==3 || photoNumber==3){
        nameOfElement = 'Cat';
      
      }else if (alphabetNumber==4 || photoNumber==4){
        nameOfElement = 'Dog';
      }else if (alphabetNumber==5 || photoNumber==5){
        nameOfElement = 'Egg';
      
      }else if (alphabetNumber==6 || photoNumber==6){
        nameOfElement = 'Frog';
      
      }else if (alphabetNumber==7 || photoNumber==7){
        nameOfElement = 'Giraffe';
      
      }else if (alphabetNumber==8 || photoNumber==8){
        nameOfElement = 'Horse';
      }else if (alphabetNumber==9 || photoNumber==9){
        nameOfElement = 'Icecream';
      
      }else if (alphabetNumber==10 || photoNumber==10){
        nameOfElement = 'Juice';
      
      }else if (alphabetNumber==11 || photoNumber==11){
      
        nameOfElement = 'Kite';
      
      }else if (alphabetNumber==12 || photoNumber==12){
      
        nameOfElement = 'Light';
      }else if (alphabetNumber==13 || photoNumber==13){
        nameOfElement = 'Mango';
      }else if (alphabetNumber==14 || photoNumber==14){
        nameOfElement = 'Noodles';
      
      }else if (alphabetNumber==15 || photoNumber==15){
      
        nameOfElement = 'Orange';
      
      }else if (alphabetNumber==16 || photoNumber==16){
      
        nameOfElement = 'Pen';
      
      }else if (alphabetNumber==17 || photoNumber==17){
      
        nameOfElement = 'Queen';
      
      }else if (alphabetNumber==18 || photoNumber==18){
      
        nameOfElement = 'Rabbit';
      
      }else if (alphabetNumber==19 || photoNumber==19){
      
        nameOfElement = 'Sun';
      }else if (alphabetNumber==20 || photoNumber==20){
      
      
        nameOfElement = 'Tiger!';
      
      }else if (alphabetNumber==21 || photoNumber==21){
      
        nameOfElement = 'Umbrella';
      
      }else if (alphabetNumber==22 || photoNumber==22){
      
        nameOfElement = 'Van';
      
      }else if (alphabetNumber==23 || photoNumber==23){
      
        nameOfElement = 'Water';
      }else if (alphabetNumber==24 || photoNumber==24){
      
      
        nameOfElement = 'X Ray';
      
      }else if (alphabetNumber==25 || photoNumber==25){
      
        nameOfElement = 'YoYo';
      
      }else if (alphabetNumber==26 || photoNumber==26){
      
        nameOfElement = 'Zoo';
      
      }
      else{
        nameOfElement = 'Apple';
      }
    });
  }
  
  void changeAplhabetNum(){
    setState(() {
      alphabetNumber = alphabetNumber + 1;
      for(int i=1; i<=alphabetNumber;i++){
        while (alphabetNumber == 27) {
          alphabetNumber = 1;
        }
        photoNumber=alphabetNumber;
        changeTitleAndSound();
      }
    });
  }
  
  void changePhotoNum(){
    setState(() {
      photoNumber = Random().nextInt(26) + 1;
    for(int i=0; i<=photoNumber; i++){
      alphabetNumber=photoNumber;
    }
      changeTitleAndSound();
    });
  }
  
  Expanded footer(){
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: h / 20),
        color: Colors.red[900],
        height: h / 30,
        width: w,
        child: Center(
            child: Text('Developed by Shoaib', style: TextStyle(
                color: Colors.white),)),
      ),
    );
  }

}