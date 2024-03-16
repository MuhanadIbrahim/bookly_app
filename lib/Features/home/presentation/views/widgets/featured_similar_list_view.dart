import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/manger/similar_books_cubit/similar_bokks_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedSmiliaListView extends StatelessWidget {
  const FeaturedSmiliaListView({super.key, required this.bookmodel});
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBokksCubit, SimilarBokksState>(
      builder: (context, state) {
        if (state is SimilarBokksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.14,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: FeaturedListViewItem(
                      imageUrl: state
                              .books[index].volumeInfo!.imageLinks?.thumbnail ??
                          'https://m.media-amazon.com/images/I/41uBiV7bx5L._SY466_.jpg',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBokksFailure) {
          return CustomErrorWidget(errMessage: state.erroMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
