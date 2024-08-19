import 'package:bookly/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_details_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/simillar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDetailsAppbar(),
          BookDetailsSection(),
          SimillarBooksSection()
        ],
      ),
    );
  }
}
