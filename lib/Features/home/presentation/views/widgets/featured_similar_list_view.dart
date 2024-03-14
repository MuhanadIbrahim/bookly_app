import 'package:bookly_app/Features/home/presentation/manger/similar_books_cubit/similar_bokks_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedSmiliaListView extends StatelessWidget {
  const FeaturedSmiliaListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBokksCubit, SimilarBokksState>(
      builder: (context, state) {
        if (state is SimilarBokksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: FeaturedListViewItem(
                    imageUrl:
                        'https://cdn.vectorstock.com/i/preview-1x/29/32/blank-book-with-white-cover-template-vector-33312932.jpg',
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
