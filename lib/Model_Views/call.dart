import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              for (int i = 1; i < 15; i++)
                ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/Profile$i.jpg'),
                    ),
                    title: const Text("Saim Raza"),
                    trailing: Icon(
                      i / 2 == 1 ? Icons.call : Icons.video_call,
                      color: Colors.red,
                    ),
                    subtitle: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Icon(
                                i / 2 == 1
                                    ? Icons.call_made
                                    : Icons.call_received_outlined,
                                color: const Color.fromARGB(255, 53, 185, 0)),
                            const Text('(2) Today: 08:05 Pm')
                          ],
                        ))),
            ],
          );
        },
      ),
    );
  }
}
