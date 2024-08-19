import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimillarBooksSection extends StatelessWidget {
  const SimillarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 125,
          child: Padding(
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
          ),
        ),
      ],
    );
  }
}
