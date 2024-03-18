import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:equatable/equatable.dart';

part 'similar_bokks_state.dart';

class SimilarBokksCubit extends Cubit<SimilarBokksState> {
  SimilarBokksCubit(this.homeRepo) : super(SimilarBokksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String categories}) async {
    emit(SimilarBokksLoading());
    var result = await homeRepo.fetchSimilarBooks(categories: categories);
    result.fold(
      (failure) {
        emit(SimilarBokksFailure(erroMessage: failure.errMessage));
      },
      (books) {
        emit(SimilarBokksSuccess(books: books));
      },
    );
  }
}
