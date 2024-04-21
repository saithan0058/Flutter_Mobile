import 'package:flutter/material.dart';

class Status_ad extends StatefulWidget {
  const Status_ad({super.key});

  @override
  State<Status_ad> createState() => _adminState();
}

class _adminState extends State<Status_ad> {
  var itemss = [
    {
      'names': 'Computer',
      'imgg': '1',
      'detail': 'aaaaaa',
      'start': '21 05 2023',
      'end': '21 06 2023'
    },
    {
      'names': 'Mouse',
      'imgg': '2',
      'detail': 'bbbbbbb',
      'start': '2 05 2023',
      'end': '21 06 2023'
    },
    {
      'names': 'Keybord ane Headphone',
      'imgg': '3',
      'detail': 'ccccccc',
      'start': '4 06 2023',
      'end': '21 06 2023'
    },
    {
      'names': 'Cpu',
      'imgg': '7',
      'detail': 'ddddddd',
      'start': '12 06 2023',
      'end': '21 06 2023'
    },
    {
      'names': 'Computer',
      'imgg': '10',
      'detail': 'eeeeeee',
      'start': '30 06 2023',
      'end': '21 06 2023'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 20,
          ),
          Align(
            child: Text(
              "Status",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: itemss.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                  child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 248, 248, 248),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      height: 5,
                    ),
                    Text('${itemss[index]['names']}'),
                    Container(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width / 4,
                          margin: EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            "image/${itemss[index]['imgg']}.jpg",
                            height: 250,
                            width: 300,
                          ),
                        ),
                        Container(
                          width: 5,
                        ),
                        Column(
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.check_box),
                              label: Text(
                                'ยืนยัน',
                                style: TextStyle(fontSize: 10),
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(80, 30),
                                primary: Colors
                                    .green, // กำหนดสีพื้นหลังของปุ่มเป็นสีเขียว
                                onPrimary: Colors.white,
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.close),
                              label: Text(
                                'ไม่ยืนยัน',
                                style: TextStyle(fontSize: 10),
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(80, 30),
                                primary: Colors
                                    .red, // กำหนดสีพื้นหลังของปุ่มเป็นสีเขียว
                                onPrimary: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text('${itemss[index]['start']}'),
                    Text('${itemss[index]['end']}'),
                  ],
                ),
              ));
            },
          )
        ],
      ),
    );
  }
}
