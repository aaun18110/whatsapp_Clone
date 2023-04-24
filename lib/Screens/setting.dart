import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('images/Profile8.jpg')),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Saim Raza',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'I am Mobile App Developer.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.more_vert),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.key,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Account',
                      style: TextStyle(fontSize: 18),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Text('Security notification, Change \nnumber')
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.lock,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Privacy',
                      style: TextStyle(fontSize: 18),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Text('Block contacts, disapperaing \nmessages')
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.face_5,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Avatar',
                      style: TextStyle(fontSize: 18),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Text('Create, edit, Profile photo')
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.chat,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Chats',
                      style: TextStyle(fontSize: 18),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Text('Theme wallpapers, chat history')
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Notifications',
                      style: TextStyle(fontSize: 18),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Text('Message, group, & call tones')
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.storage,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Storage and data',
                      style: TextStyle(fontSize: 18),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Text('Network usage, auto-download')
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.language,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'App Language',
                      style: TextStyle(fontSize: 18),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Text('English (phones languages)')
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.help,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Help',
                      style: TextStyle(fontSize: 18),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                    Text('Help center, contact us, privacy policy')
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    Icons.group,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Invite a friends',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                )
              ],
            ),
            Text(
              'from',
              style: TextStyle(color: Colors.grey[800], fontSize: 16),
            ),
            const Image(
              image: AssetImage('images/meta.png'),
              width: 50,
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
