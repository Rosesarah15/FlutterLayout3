import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 60, 86),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Notifications',
          style: TextStyle(fontSize: 22),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'images/pls.jpg',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Today's",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'Dec 01,2022',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )
              ],
            ),
          ),
          // const SizedBox(
          //   height: 5,
          // ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/redwarnings.jpg',
                  width: 80,
                  height: 80,
                ),
                const SizedBox(
                  width: 18,
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Warning',
                            style: TextStyle(
                                fontSize: 27,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '2 min ago',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur',
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      ),
                      Text(
                        'adipiscing elit, sed do eiusmod tempor incididunt',
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Yesterday',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'Sept 30, 2022',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          buildContainer(
            'Error',
            '1 day ago',
            'images/error_yellows.jpg',
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt',
          ),
          buildContainer('Success', '1 day ago', 'images/successes.jpg',
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'),
          buildContainer('Info', '1 day ago', 'images/infos.jpg',
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'),
          buildContainer('Error', '1 day ago', 'images/error_yellows.jpg',
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'),
        ]),
      ),
    );
  }
}

Widget buildContainer(
    String title, String date, String imageAsset, String message) {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(10)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageAsset,
          width: 80,
          height: 80,
        ),
        const SizedBox(
          width: 18,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    date,
                    style: const TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
              Text(
                message,
                style: const TextStyle(fontSize: 11, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
