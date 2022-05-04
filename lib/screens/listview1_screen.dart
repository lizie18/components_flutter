import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    const movies = ['V for Vendetta', 'Catch me if you can', 'The big short'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View1Screen'),
      ),
      body: ListView(
        children: [
          ...movies.map((movie) => ListTile(
            leading: const Icon(Icons.account_tree_rounded),
            title: Text(movie)
          ),).toList()
          
        ]
      )
    );
  }
}