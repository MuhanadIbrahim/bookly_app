import 'package:bookly_app/Features/home/presentation/manger/search_books_cubit/search_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResualtListView extends StatelessWidget {
  const SearchResualtListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBookSuccess) {
          return ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kBookDetailsView,
                            extra: state.books[index]);
                      },
                      child: BestSellerListViewItem(
                        bookModel: state.books[index],
                      )
                      // BestSellerListViewItem()
                      ),
                );
              });
        } else if (state is SearchBookFailure) {
          return const CustomErrorWidget(
              errMessage:
                  'We couldnt find a book  in our library. Would you like to browse similar titles or try a different search term?');
        } else if (state is SearchBookLoading) {
          return const CustomLoadingIndicator();
        } else {
          return Image.asset('assets/images/result (1).png');
        }
      },
    );
  }
}
