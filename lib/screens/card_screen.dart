import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card widget')
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: const [
          Card(
            elevation: 3.5,
            child: ListTile(
              leading: Icon(Icons.ac_unit_outlined),
              title: Text('Card widget'),
              subtitle: Text('Irure sunt dolor pariatur proident ullamco amet quis aliquip veniam in eu consectetur sunt ex.'),
            )
          ),
          
        ]
      )
    );
  }
}