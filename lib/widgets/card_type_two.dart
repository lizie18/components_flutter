import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTypeTwo extends StatelessWidget {
  final String urlImage;
  final String? comment;

  const CustomCardTypeTwo({Key? key, required this.urlImage, this.comment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: AppTheme.primaryColor.withOpacity(.6),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(urlImage),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            fadeInDuration: const Duration(milliseconds: 200),
          ),
          if (comment != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(comment ?? 'No text'))
        ],
      ),
    );
  }
}
