import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Map<String, dynamic>> list1 = [
    {'icon': 'assets/image/book.png', 'name': 'book list'},
    {'icon': 'assets/image/reading.png', 'name': 'reading'},
    {'icon': 'assets/image/space.png', 'name': 'space'},
    {'icon': 'assets/image/menu.png', 'name': 'more'},
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
      // backgroundColor: Color(0xffF5F0E5),
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
                    "ENJOY READING",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 320,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        suffixIcon: Icon(Icons.search_rounded),
                        hintText: 'Search of book',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                        //fillColor: Colors.yellow,
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade100),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  Container(
                    width: 344,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFEC515),
                        boxShadow: [BoxShadow(color: Colors.black26)]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              right: 0,
                              left: 10,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Child Picture\nBook',
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff7E5001),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Column(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 110,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20)),
                                        color: Colors.red,
                                      ),
                                      child: Center(
                                          child: Text(
                                        'Click to enter',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Image.asset('assets/image/b-removebg-preview.png'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 360,
                  // color: Colors.green,
                  child: ListView.builder(
                    itemCount: list1.length,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          Container(
                            height: 70,
                            width: 80,
                            // color: Colors.red,
                            margin: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 3),
                            child: Center(
                              child: Column(
                                children: [
                                  Image.asset(list1[index]['icon'],
                                      height: 30, width: 30),
                                  SizedBox(height: 10),
                                  Text(list1[index]['name']),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.grey.shade300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 4.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffFEC515),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'RECOMMEND',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Text('see all',
                          style: TextStyle(color: Colors.grey.shade400)),
                      Icon(
                        Icons.arrow_circle_right_rounded,
                        color: Colors.grey.shade400,
                        size: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 300,
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
                              top: 2,
                              left: 5,
                              child: Container(
                                height: 143,
                                width: 130,
                                //color: Colors.black54,
                                child: Image.asset(list2[index]['image']),
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
