import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/widgets/bottom_nav.dart';

class itemc extends StatefulWidget {
  final Map<String, dynamic> itemData;

  itemc({Key? key, required this.itemData}) : super(key: key);

  @override
  State<itemc> createState() => _itemcState();
}

class _itemcState extends State<itemc> {
  DateTimeRange selectedDates =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());
  @override
  String show = ("");
  int page = 2;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
            child: (Column(
          children: [
            Spacer(),
            Text(
              widget.itemData['names'],
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 300,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Total ${selectedDates.duration.inDays} days"),
                  Container(
                    height: 10,
                  ),
                  // Text("${selectedDates.start}"),
                  // Container(
                  //   height: 10,
                  // ),
                  // Text("${selectedDates.end}"),
                  // Container(
                  //   height: 10,
                  // ),
                  Text("tart  " +
                      DateFormat("dd   MM   yyyy").format(selectedDates.start)),
                  Container(
                    height: 10,
                  ),
                  Text("End  " +
                      DateFormat("dd   MM   yyyy").format(selectedDates.end)),
                  Container(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: const Text("Choose Dates"),
                    onPressed: () async {
                      final DateTimeRange? dateTimeRange =
                          await showDateRangePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(const Duration(days: 356)),
                      );
                      if (dateTimeRange != null) {
                        setState(() {
                          selectedDates = dateTimeRange;
                          show = ("End  " +
                              DateFormat("dd   MM   yyyy")
                                  .format(selectedDates.end));
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // กำหนดสีพื้นหลังของปุ่ม
                primary: Color.fromARGB(255, 0, 166, 8),
                // กำหนดขนาดของปุ่ม
                minimumSize: Size(250, 65),
              ),
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
              child: const Text('Confirm'),
            ),
            Spacer()
          ],
        ))),
      ),
    );
  }
}
