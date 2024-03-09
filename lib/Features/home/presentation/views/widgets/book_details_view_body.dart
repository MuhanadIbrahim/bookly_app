import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_similar_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/features_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/smililar_book_section.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailViewBody extends StatefulWidget {
  const BookDetailViewBody({super.key});

  @override
  State<BookDetailViewBody> createState() => _BookDetailViewBodyState();
}

class _BookDetailViewBodyState extends State<BookDetailViewBody> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                SafeArea(child: SizedBox()),
                BookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SmilarBookSection(),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
