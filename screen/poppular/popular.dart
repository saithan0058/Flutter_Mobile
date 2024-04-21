import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/poppular/GridItem.dart';

class popular extends StatelessWidget {
  popular({super.key});

  var itemss = [
    {'names': 'Computer', 'imgg': '1', 'detail': 'aaaaaa', 'datetime': ''},
    {'names': 'Mouse', 'imgg': '2', 'detail': 'bbbbbbb', 'datetime': ''},
    {
      'names': 'Keybord ane Headphone',
      'imgg': '3',
      'detail': 'ccccccc',
      'datetime': ''
    },
    {'names': 'Cpu', 'imgg': '7', 'detail': 'ddddddd', 'datetime': ''},
    {'names': 'Computer', 'imgg': '10', 'detail': 'eeeeeee', 'datetime': ''},
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            ),
          ),
          Container(
            height: 70,
          ),
          SizedBox(
            height: 40,
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: SizedBox(
                width: 300.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 35,
                    color: Color.fromARGB(255, 162, 24, 24),
                    shadows: [
                      Shadow(
                        blurRadius: 7.0,
                        color: Color.fromRGBO(233, 52, 7, 1),
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      FlickerAnimatedText('POPULAR ITEM'),
                      FlickerAnimatedText('POPULAR ITEM'),
                      FlickerAnimatedText('POPULAR ITEM'),
                    ],
                    onTap: () {
                      print('Tap Event');
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridItems(itemss: itemss),
        ],
      ),
    );
  }
}
