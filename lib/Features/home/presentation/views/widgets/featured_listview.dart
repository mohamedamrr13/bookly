import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 16.0, bottom: 24),
            child: CustomBookImage(),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: 100,
      ),
    );
  }
}
