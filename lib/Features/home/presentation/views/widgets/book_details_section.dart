import 'package:bookly/Features/home/presentation/views/widgets/action_button.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/Features/home/presentation/views/widgets/rating_model.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.width * 0.65,
            child: const CustomBookImage()),
        const SizedBox(height: 45),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 7,
        ),
        const Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const RatingModel(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const ActionButton()
      ],
    );
  }
}
