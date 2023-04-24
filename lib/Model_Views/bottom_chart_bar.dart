import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  FontAwesomeIcons.faceSmile,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 205,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Message",
                  ),
                ),
              ),
              const Icon(Icons.attach_file_rounded),
              const SizedBox(
                width: 5,
              ),
              const Icon(Icons.camera_alt_rounded),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const CircleAvatar(
          radius: 25,
          child: Icon(Icons.mic),
        )
      ],
    );
  }
}
