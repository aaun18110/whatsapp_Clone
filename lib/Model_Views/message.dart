import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/chartpage');
          },
          child: Column(
            children: [
              for (int i = 1; i < 15; i++)
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: ClipRRect(
                            child: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage('images/Profile$i.jpg'),
                        ))),
                    const SizedBox(
                      width: 18,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 16, bottom: 4),
                          child: Text(
                            "Saim Raza",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Text("hi! who are you?",
                            style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text("10:20 Pm",
                                style: TextStyle(fontSize: 14)),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 59, 161, 0),
                                borderRadius: BorderRadius.circular(100)),
                            child: const Center(
                              child: Text(
                                "10",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          )),
    );
  }
}
