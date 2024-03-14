import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/smililar_book_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailViewBody extends StatefulWidget {
  const BookDetailViewBody({super.key, required this.bookmodel});
  final BookModel bookmodel;

  @override
  State<BookDetailViewBody> createState() => _BookDetailViewBodyState();
}

class _BookDetailViewBodyState extends State<BookDetailViewBody> {
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
              const  SafeArea(child: SizedBox()),
               const BookDetailsAppBar(),
                BookDetailsSection(bookmodel: widget.bookmodel,),
               const Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
               const SmilarBookSection(),
              const  SizedBox(
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
