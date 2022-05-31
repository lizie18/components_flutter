import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool enabledSlider = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Sliders & Checks')),
        body: Column(
          children: [
            const AboutListTile(),
            Slider.adaptive(
                // divisions: 6,
                activeColor: AppTheme.primaryColor,
                min: 50,
                max: 500,
                value: _sliderValue,
                onChanged: enabledSlider
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null),
            // Checkbox(
            //     value: enabledSlider,
            //     onChanged: (value) => setState(() {
            //           enabledSlider = value ?? true;
            //         })),
            // Switch(
            //     value: enabledSlider,
            //     onChanged: (value) => setState(() {
            //           enabledSlider = value;
            //         })),
            CheckboxListTile(
                title: const Text('Enable slider'),
                activeColor: AppTheme.primaryColor,
                value: enabledSlider,
                onChanged: (value) => setState(() {
                      enabledSlider = value ?? true;
                    })),
            SwitchListTile.adaptive(
                title: const Text('Enable slider'),
                activeColor: AppTheme.primaryColor,
                value: enabledSlider,
                onChanged: (value) => setState(() {
                      enabledSlider = value;
                    })),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://i.pinimg.com/originals/73/1c/60/731c60878e283bd09b387c6eedc6c922.jpg'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
            const SizedBox(height: 50)
          ],
        ));
  }
}
