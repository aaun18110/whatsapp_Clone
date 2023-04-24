import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChartCliper extends StatefulWidget {
  const ChartCliper({super.key});

  @override
  State<ChartCliper> createState() => _ChartCliperState();
}

class _ChartCliperState extends State<ChartCliper> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(195, 255, 255, 255),
                borderRadius: BorderRadius.circular(10)),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.receive),
              child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, bottom: 10, right: 20),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: const Text(
                        "hi! Buddy. How are you?",
                        style: TextStyle(fontSize: 15),
                      ))),
            ),
          ),
        ),
      ],
    );
  }
}
