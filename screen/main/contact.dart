import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  const contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Spacer(),
          Text(
            'มหาวิทยาลัยแม่ฟ้าหลวง',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 5,
          ),
          Text(
            'Mae Fah Luang University',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Container(
            height: 5,
          ),
          Text(
            '333 หมู่1 ต.ท่าสุด อ.เมือง จ.เชียงราย 57100',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Container(
            height: 5,
          ),
          Text(
            'โทรศัพท์ 0-5391-6000 ,0-5391-7034',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Container(
            height: 5,
          ),
          Text(
            'โทรสาร 0-5391-6034 ,0-5391-7049',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Container(
            height: 5,
          ),
          Text(
            'สำนักเทคโนโลยีสารสนเทศ มหาวิทยาลัยแม่ฟ้าหลวง',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Spacer()
        ],
      )),
    );
  }
}
