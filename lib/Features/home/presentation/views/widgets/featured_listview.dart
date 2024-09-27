import 'package:bookly/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/core/utils/app_router.dart';

import 'package:bookly/core/utils/error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return Padding(
          padding: const EdgeInsets.only(left: 8),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16.0, bottom: 24),
                child: GestureDetector(
                  onTap: () {
                    context.go(AppRouter.detailsviewPath,
                        extra: state.books[index]);
                  },
                  child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              ''),
                ),
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        return ErrorMessage(message: state.errMessaage);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
