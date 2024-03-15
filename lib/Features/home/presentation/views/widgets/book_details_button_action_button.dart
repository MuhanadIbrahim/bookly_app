import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsButtonAction extends StatelessWidget {
  const BookDetailsButtonAction(
      {super.key,
      required this.text,
      required this.textColor,
      required this.backgroundColor,
      this.borderRadius, this.onPressed});
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onPressed;
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
