import 'package:emergency_support/view/page2.dart';
import 'package:flutter/material.dart';

class Emergency3 extends StatelessWidget {
  Emergency3({super.key});

  var images = [
    "assets/images/user1.png",
    "assets/images/user2.png",
    "assets/images/user3.png",
    "assets/images/user4.png",
    "assets/images/user5.png",
    "assets/images/user6.png",
  ];
  var nameList = [
    "James Parker",
    "Christina Belt",
    "George Graham",
    "Jennifer Donough",
    "Carl Geer",
    "James Powers",
  ];
  var numberList = [
    "408-747-7238",
    "309-337-8350",
    "309-295-8912",
    "914-684-6019",
    "916-232-3746",
    "610-970-6818",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 24,),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.red[700],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon:Icon(Icons.arrow_back),
                  color: Colors.white, onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Emergency2()));
                },
                ),
                Text(
                  "Emergency contact list",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Expanded(
            child:
            ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) => Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(images[index]),
                        ),
                        title: Text(
                          nameList[index],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          numberList[index],
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        trailing: Icon(
                          Icons.more_vert,
                          color: Colors.black,
                        ),
                      ),
                    )),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Emergency2()));
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
              Icon(Icons.home_outlined,color: Colors.grey,),
              Icon(Icons.calendar_today_outlined,color: Colors.grey,),
              Icon(Icons.folder_copy_outlined,color: Colors.grey,),
              Icon(Icons.person,color: Colors.grey,),

            ],
          ),
        )
    );
  }
}
