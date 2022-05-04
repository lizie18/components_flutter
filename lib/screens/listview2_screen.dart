import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const movies = ['V for Vendetta', 'Catch me if you can', 'The big short'];
    return Scaffold(
        appBar: AppBar(
            title: const Text('List View2Screen')),
        body: ListView.separated(
            itemCount: movies.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (BuildContext context, int index) => ListTile(
                  leading: const Icon(Icons.account_tree_rounded),
                  trailing: const Icon(Icons.keyboard_arrow_right_sharp),
                  title: Text(movies[index]),
                  onTap: () {
                    print(movies[index]);
                  },
                ))
        // children: [
        //     ...movies.map((movie) => ListTile(
        //       leading: const Icon(Icons.account_tree_rounded),
        //       title: Text(movie)
        //     ),).toList()
        //   ]
        );
  }
}
