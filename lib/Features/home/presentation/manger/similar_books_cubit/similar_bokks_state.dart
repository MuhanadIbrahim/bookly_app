part of 'similar_bokks_cubit.dart';

sealed class SimilarBokksState extends Equatable {
  const SimilarBokksState();

  @override
  List<Object> get props => [];
}

final class SimilarBokksInitial extends SimilarBokksState {}

final class SimilarBokksFailure extends SimilarBokksState {
  final String erroMessage;

  const SimilarBokksFailure({required this.erroMessage});
}

final class SimilarBokksSuccess extends SimilarBokksState {
  final List<BookModel> books;

  const SimilarBokksSuccess({required this.books});
}

final class SimilarBokksLoading extends SimilarBokksState {}
