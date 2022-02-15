import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/app/app.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffFDCF09),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/batman.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      'Chelsie Brett',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 30,
                  width: 100,
                  color: Colors.grey[900],
                  child: Center(
                    child: Text(
                      'Movies',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 120,
                  color: Colors.pink,
                  child: Center(
                    child: Text(
                      'Shows',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 100,
                  color: Colors.grey[900],
                  child: Center(
                    child: Text(
                      'Music',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NEW',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => StatefulBuilder(
                  builder: (BuildContext context, setState) => SizedBox(
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        'https://picsum.photos/200/300',
                        height: 200,
                        width: 130,
                      ),
                    ),
                  ),
                ),
                itemCount: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'POPULAR',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => StatefulBuilder(
                  builder: (BuildContext context, setState) => SizedBox(
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        'https://picsum.photos/200/300',
                        height: 200,
                        width: 130,
                      ),
                    ),
                  ),
                ),
                itemCount: 3,
              ),
            ),
          ],
        ),
      );
}
