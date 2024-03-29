import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/constains.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: CachedNetworkImage(
              imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ??
                  'https://i.pinimg.com/originals/cb/b9/d2/cbb9d2fed961f53a77a5d1b3ec33f104.jpg',
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    bookModel.volumeInfo!.title ?? 'No title available',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGtSecrtraFine),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  bookModel.volumeInfo!.authors?[0] ?? 'Unknown Author',
                  style: Styles.textStyle14,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    BookRating(
                      rating: 0,
                      count: 0,
                      mainAxisAlignment: MainAxisAlignment.center,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
