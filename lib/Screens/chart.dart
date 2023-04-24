import 'package:flutter/material.dart';
import '../Model_Views/bottom_chart_bar.dart';
import '../Model_Views/chart_design.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: AppBar(
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Icon(
                    Icons.arrow_back,
                    size: 25,
                  ),
                )),
            leadingWidth: 30,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 0, top: 8, right: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    child: Image(
                      image: AssetImage('images/Profile1.jpg'),
                      width: 45,
                      height: 45,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: RichText(
                    text: const TextSpan(
                        text: "Saim Raza",
                        style: TextStyle(fontSize: 20),
                        children: [
                          TextSpan(
                              text: "\nBussines Account",
                              style: TextStyle(fontSize: 15))
                        ]),
                  ),
                ),
              ],
            ),
            actions: const [
              Icon(
                Icons.video_call_rounded,
                size: 35,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.call,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Center(
                      child: Container(
                        width: 300,
                        // height: 100,
                        decoration: BoxDecoration(
                            color: Colors.amber[50],
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 3,
                                  offset: Offset(2, 3))
                            ]),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Message templates ensure that business-initiated communication follows WhatsApp guidelines.",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const ChartCliper(),
                  const SizedBox(
                    height: 480,
                  ),
                  const BottomBar(),
                ],
              ),
            ),
          ],
        ));
  }
}
