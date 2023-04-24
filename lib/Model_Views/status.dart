import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 3),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: ClipRRect(
                            child: CircleAvatar(
                          backgroundImage: AssetImage('images/Profile2.jpg'),
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "My Status",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Today: 12:30 am",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_vert,
                    size: 30,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Latest Updates", style: TextStyle(fontSize: 18)),
            ),
            for (int i = 1; i < 3; i++)
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.green, width: 3)),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ClipRRect(
                            child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('images/Profile$i.jpg'),
                        )),
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Ali",
                          style: TextStyle(fontSize: 18),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                        Text(
                          "Today: 02:15 Pm",
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
              ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Recent Update",
                style: TextStyle(fontSize: 18),
              ),
            ),
            for (int i = 5; i < 8; i++)
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 12),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.grey, width: 3)),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ClipRRect(
                            child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('images/Profile$i.jpg'),
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Ali",
                        style: TextStyle(fontSize: 18),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                      Text(
                        "Today: 02:15 Pm",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    right: 24,
                  ),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.edit,
                    ),
                  ),
                )
              ],
            )
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
