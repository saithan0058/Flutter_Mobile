import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/screen/item/in/itemc/itemc.dart';
import 'package:project/widgets/bottom_nav.dart';
import 'package:provider/provider.dart';
import '../../../widgets/Product_Image.dart';

class Status_in extends StatefulWidget {
  final Map<String, dynamic> itemData; // เพิ่มบรรทัดนี้

  Status_in({Key? key, required this.itemData})
      : super(key: key); // เพิ่มพารามิเตอร์และเรียกใช้งานคลาสแม่

  @override
  State<Status_in> createState() => __Status_inStateState();
}

class __Status_inStateState extends State<Status_in> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> itemData = widget.itemData; // เก็บค่า itemData

    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 162, 24, 24),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            child: Stack(children: [
              Center(
                child: ProductImageSlider(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 25,
                  ),
                ),
              )
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.itemData['names'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    RatingBar.builder(
                        initialRating: 3.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 25,
                        itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                        onRatingUpdate: (rating) {}),
                    SizedBox(
                      width: 15,
                    ),
                    Text('(450)'),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            widget.itemData['detail'],
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.justify,
          ),
          Center(
              child: Column(
            children: [
              Container(
                height: 150,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => home(),
                      ),
                    );
                  });
                },
                child: Text('DELETE'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 40, vertical: 20), // ปรับขนาดของปุ่ม
                  primary: Colors.red, // เปลี่ยนสีพื้นหลังของปุ่ม
                  onPrimary: Colors.white, // เปลี่ยนสีตัวอักษรของปุ่ม
                ),
              ),
            ],
          ))
        ],
      )),
    );
  }
}

class process extends ChangeNotifier {
  int hindex = 0;
}
