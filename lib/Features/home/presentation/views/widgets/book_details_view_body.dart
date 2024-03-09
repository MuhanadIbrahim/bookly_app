import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_section.dart';
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                SafeArea(child: SizedBox()),
                BookDetailsAppBar(),
                BookDetailsSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}
