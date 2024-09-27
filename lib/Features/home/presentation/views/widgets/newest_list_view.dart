import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/newest_item.dart';
import 'package:bookly/core/utils/error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return NewestItem(book: state.books[index]);
            },
          ),
        );
      } else if (state is NewestBooksFailure) {
        return ErrorMessage(message: state.errMessage);
      } else {
        return const Padding(
          padding: EdgeInsets.only(top: 150.0),
          child: Center(child: CircularProgressIndicator()),
        );
      }
    });
  }
}
