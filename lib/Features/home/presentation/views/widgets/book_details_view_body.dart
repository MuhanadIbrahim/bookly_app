import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_image_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/constains.dart';
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
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const SafeArea(child: SizedBox()),
                const BookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.18),
                  child: const BookDetailsImageItem(),
                ),
                Text(
                  'The Jungle Book',
                  style:
                      Styles.textStyle30.copyWith(fontFamily: kGtSecrtraFine),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18,
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 35,
                ),
                const BookAction()
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: BookDetailsButtonAction(
            text: '19.99€',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          child: BookDetailsButtonAction(
            text: 'Free preview',
            textColor: Colors.white,
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
        )
      ],
    );
  }
}

class BookDetailsButtonAction extends StatelessWidget {
  const BookDetailsButtonAction(
      {super.key,
      required this.text,
      required this.textColor,
      required this.backgroundColor,
      this.borderRadius});
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12))),
        child: Text(
          text,
          style: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.w900, color: textColor),
        ),
      ),
    );
  }
}
