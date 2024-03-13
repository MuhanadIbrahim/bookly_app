import 'package:bookly_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedSmiliaListView extends StatelessWidget {
  const FeaturedSmiliaListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: FeaturedListViewItem(imageUrl: 'https://cdn.vectorstock.com/i/preview-1x/29/32/blank-book-with-white-cover-template-vector-33312932.jpg',),
          );
        },
      ),
    );
  }
}
