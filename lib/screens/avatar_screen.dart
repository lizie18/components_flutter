import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              child: const Text('ML'),
              backgroundColor: Colors.teal[200],
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/736x/e5/1e/8f/e51e8faceaca8baeef6ecf9a4bf6b55b.jpg'),
        ),
      ),
    );
  }
}
