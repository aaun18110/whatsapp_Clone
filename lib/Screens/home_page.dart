import 'package:flutter/material.dart';
import '../Model_Views/call.dart';
import '../Model_Views/message.dart';
import '../Model_Views/status.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.search),
            PopupMenuButton(
                onSelected: (selected) {
                  if (selected == '2') {
                    Navigator.pushNamed(context, '/setting');
                  }
                },
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                          value: '1', child: Text(" New Group ")),
                      const PopupMenuItem(
                        value: '2',
                        child: Text(" Setting "),
                      ),
                      const PopupMenuItem(value: '3', child: Text(" Logout "))
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
          bottom: TabBar(tabs: [
            const Tab(child: Icon(Icons.camera_alt)),
            Tab(
                child: Row(
              children: [
                const Text("Chart"),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: const Center(
                    child: Text(
                      "10",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            )),
            const Tab(child: Text("Status")),
            Tab(
                child: Row(
              children: [
                const Text("Call"),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: const Center(
                    child: Text(
                      '5',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            ))
          ]),
        ),
        body: Builder(builder: (context) {
          return const TabBarView(children: [
            Center(
                child: Icon(
              Icons.camera_alt,
              size: 100,
            )),
            MessagePage(),
            StatusPage(),
            CallPage(),
          ]);
        }),
      ),
    );
  }
}
