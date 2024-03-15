import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_image_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/constains.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookmodel});
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.18),
          child: BookDetailsImageItem(
            bookmodel: bookmodel,
          ),
        ),
        Center(
          child: Text(
            textAlign: TextAlign.center,
            bookmodel.volumeInfo!.title!,
            style: Styles.textStyle30.copyWith(fontFamily: kGtSecrtraFine),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Opacity(
          opacity: 0.7,
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              bookmodel.volumeInfo!.authors![0],
              style: Styles.textStyle18,
            ),
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        BookRating(
          rating: 0,
          count: 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 35,
        ),
         BookAction(bookmodel: bookmodel,)
      ],
    );
  }
}
