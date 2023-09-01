import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2(
      {super.key,
      this.image,
      this.name,
      this.sname,
      this.lanme,
      this.name2,
      this.name3});

  final image;
  final name;
  final sname;
  final lanme;
  final name2;
  final name3;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int selctd = 0;

  List<Map<String, dynamic>> list1 = [
    {'name': 'Child'},
    {'name': 'Humanities'},
    {'name': 'Education'},
    {'name': 'Science'},
  ];
  List<Map<String, dynamic>> list2 = [
    {
      'image': 'assets/image/b1.jpeg',
      'name': 'The Giant Kingdom',
      'sname': '261',
      'lanme': 'remaining',
      'name2': "Extracurricular reading / Growing\nmativational story book",
      'name3': 'Borrow it',
    },
    {
      'image': 'assets/image/b2.webp',
      'name': "Bear's wish",
      'sname': '261',
      'lanme': 'remaining',
      'name2': "Extracurricular reading / Child ed-\nucation story",
      'name3': 'Borrow it',
    },
    {
      'image': 'assets/image/b3.jpg',
      'name': 'Animal adventures',
      'sname': '261',
      'lanme': 'remaining',
      'name2': "Extracurricular reading / Growing\nmativational story book",
      'name3': 'Borrow it',
    },
    {
      'image': 'assets/image/b4.jpg',
      'name': 'Growing story',
      'sname': '261',
      'lanme': 'remaining',
      'name2': "Extracurricular reading / Child ed-\nucation story",
      'name3': 'Borrow it',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 120,
                  width: 360,
                  // color: Colors.black54,
                ),
                Positioned(
                    left: -70,
                    top: -80,
                    //right: -20,
                    child: CircleAvatar(
                      maxRadius: 90,
                      minRadius: 50,
                      backgroundColor: Color(0xffFFECB2),
                    )),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    "ENJOY LENDING",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  list1.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selctd = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 20, bottom: 10),
                      child: Column(
                        children: [
                          Text(
                            list1[index]['name'],
                            style: TextStyle(
                                fontSize: selctd == index ? 20 : 15,
                                fontWeight: selctd == index
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                          SizedBox(height: 1),
                          Container(
                            height: 5,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: selctd == index
                                  ? Color(0xffFEC515)
                                  : Colors.transparent,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 538,
                  width: 360,
                  //color: Colors.green,
                  child: ListView.builder(
                    itemCount: list2.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          Container(
                            width: 340,
                            height: 140,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 130, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(list2[index]['name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    list2[index]['name2'],
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(list2[index]['sname'],
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(list2[index]['lanme'],
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 11)),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8),
                                        child: Container(
                                          height: 30,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20)),
                                            color: Color(0xffFEC515),
                                          ),
                                          child: Center(
                                              child: Text(
                                            list2[index]['name3'],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 20,
                                  )
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                          ),
                          Positioned(
                              top: 25,
                              left: 5,
                              child: Container(
                                height: 120,
                                width: 130,
                                //color: Colors.black54,
                                child: Image.asset(
                                  list2[index]['image'],
                                ),
                              ))
                        ],
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
