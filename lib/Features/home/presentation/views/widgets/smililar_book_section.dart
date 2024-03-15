import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_similar_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SmilarBookSection extends StatelessWidget {
  const SmilarBookSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: Styles.textStyle14,
          ),
        ),
       const SizedBox(
          height: 4,
        ),
        FeaturedSmiliaListView(bookmodel: bookModel,)
      ],
    );
  }
}
