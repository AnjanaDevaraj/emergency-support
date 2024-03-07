import 'package:emergency_support/view/page2.dart';
import 'package:flutter/material.dart';

class Emergency1 extends StatelessWidget {
  const Emergency1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 100.0)),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/emergency1.jpeg")))),
            SizedBox(
              height: 30,
            ),
            Text(
              "EMERGENCY\nASSISTANCE FOR\nCUSTOMERS",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red[800],
                  fontWeight: FontWeight.w900,
                  fontSize: 26),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50),
                      backgroundColor: Colors.red[600]),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Emergency2()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Lets get started",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
