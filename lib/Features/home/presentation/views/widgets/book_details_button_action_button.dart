import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/function/launch_url.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsButtonAction extends StatelessWidget {
  const BookDetailsButtonAction(
      {super.key,
      required this.text,
      required this.textColor,
      required this.backgroundColor,
      this.borderRadius,
      this.onPressed,
      required this.bookModel});
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {
          launchCustomUrl(context, bookModel.volumeInfo?.previewLink ?? '');
        },
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
