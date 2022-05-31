import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card widget')),
        body: ListView(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            children: const [
              CustomCardTypeOne(),
              SizedBox(height: 16),
              CustomCardTypeTwo(
                  urlImage:
                      'https://r4.wallpaperflare.com/wallpaper/965/883/624/manga-one-piece-wallpaper-b9f0d8ddc18a9d8b1677282f30d1e68d.jpg'),
              SizedBox(height: 16),
              CustomCardTypeTwo(
                  urlImage: 'https://images.alphacoders.com/557/557030.jpg'),
              SizedBox(height: 16),
              CustomCardTypeTwo(
                  urlImage: 'https://wallpapercave.com/wp/wp7089954.png'),
              SizedBox(height: 20),
            ]));
  }
}
