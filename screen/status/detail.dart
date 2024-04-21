import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/item/itemmain_Screen.dart';
import 'package:project/widgets/bottom_nav.dart';

import '../../widgets/itemnav.dart';

class Detail extends StatefulWidget {
  final DocumentSnapshot documentList;
  const Detail( {super.key,required this.documentList});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: ((context) => itemnav())),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),),
      body: Column(
        children: [
          Container(
            child: Image.network(widget.documentList['ImageUrl']),
          )
        ],
      ),
    );
  }
}