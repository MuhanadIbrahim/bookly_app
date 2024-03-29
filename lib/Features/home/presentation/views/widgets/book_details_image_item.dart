import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetailsImageItem extends StatelessWidget {
  const BookDetailsImageItem({super.key, required this.bookmodel});
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: bookmodel.volumeInfo?.imageLinks?.thumbnail ??
            'https://i.pinimg.com/originals/cb/b9/d2/cbb9d2fed961f53a77a5d1b3ec33f104.jpg',
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
