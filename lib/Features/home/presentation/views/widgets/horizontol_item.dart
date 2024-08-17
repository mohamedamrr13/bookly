import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HorizonotlItem extends StatelessWidget {
  const HorizonotlItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, bottom: 24),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImage)))),
      ),
    );
  }
}
