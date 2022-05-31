import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTypeOne extends StatelessWidget {
  const CustomCardTypeOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3.5,
        child: Column(
          children: [
            const ListTile(
              leading: Icon(
                Icons.ac_unit_outlined,
                color: AppTheme.primaryColor,
              ),
              title: Text('Card widget'),
              subtitle: Text(
                  'Irure sunt dolor pariatur proident ullamco amet quis aliquip veniam in eu consectetur sunt ex.'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () => {}, child: const Text('Cancel')),
                  TextButton(onPressed: () => {}, child: const Text('OK'))
                ],
              ),
            )
          ],
        ));
  }
}
