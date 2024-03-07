import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:emergency_support/view/page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Emergency2 extends StatefulWidget {
  Emergency2({super.key});

  @override
  State<Emergency2> createState() => _Emergency2State();
}

class _Emergency2State extends State<Emergency2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "WE'RE SENDING\nEMERGENCY SUPPORT",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Don't worry, our suport team will\ncontact you in next...",
              style: TextStyle(color: Colors.grey, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            CircularCountDownTimer(
              duration: 40,
              initialDuration: 0,
              controller: CountDownController(),
              width: MediaQuery.of(context).size.width / 2.5,
              height: MediaQuery.of(context).size.height / 2.5,
              ringColor: Colors.grey,
              ringGradient: null,
              fillColor: Colors.red[700]!,
              fillGradient: null,
              backgroundColor: Colors.white,
              backgroundGradient: null,
              strokeWidth: 20.0,
              strokeCap: StrokeCap.round,
              textStyle: TextStyle(
                  fontSize: 33.0,
                  color: Colors.red[700],
                  fontWeight: FontWeight.bold),
              textFormat: CountdownTextFormat.MM_SS,
              isReverse: true,
              isReverseAnimation: true,
              isTimerTextShown: true,
              autoStart: true,
              onStart: () {
                debugPrint('Countdown Started');
              },
              onComplete: () {
                debugPrint('Countdown Ended');
              },
              onChange: (String timeStamp) {
                debugPrint('Countdown Changed $timeStamp');
              },
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Card(
                          child: ListTile(
                            tileColor: Colors.white,
                            title: Text(
                              "Emergency Contact",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              "408-747-7238",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            trailing: InkWell(
                              onTap: () {
                                _callNumber("408-747-7238");
                              },
                              child: CircleAvatar(
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.call,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(100), // Adjust the radius as needed
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Emergency3()));
        },
        backgroundColor: Colors.red[600],
        child: Icon(
          Icons.star,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 50,
        surfaceTintColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            Icon(
              Icons.calendar_today_outlined,
              color: Colors.grey,
            ),
            Icon(
              Icons.folder_copy_outlined,
              color: Colors.grey,
            ),
            Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  _callNumber(String number) async {
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }
}
