import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'simillar_books_state.dart';

class SimillarBooksCubit extends Cubit<SimillarBooksState> {
  SimillarBooksCubit(this.homeRepo) : super(SimillarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimillarBooks({required String category}) async {
    emit(SimillarBooksLoading());
    var result = await homeRepo.fetchSimillarBooks(category: category);
    result.fold((failure) {
      emit(SimillarBooksFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(SimillarBooksSuccess(books: books));
    });
  }
}
