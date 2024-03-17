import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_button_action_button.dart';
import 'package:bookly_app/core/utils/function/launch_url.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  BookAction({super.key, required this.bookmodel});
  BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: BookDetailsButtonAction(
            bookModel: bookmodel,
            text: 'Free',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          child: BookDetailsButtonAction(
            bookModel: bookmodel,
            onPressed: () async {
              launchCustomUrl(context, bookmodel.volumeInfo?.previewLink ?? '');
              // if (await canLaunchUrl(uri)) {
              //   await launchUrl(uri);
              // } else {
              //   ScaffoldMessenger(child: Text('sdsds'));
              // }
            },
            text: getText(bookModel: bookmodel),
            textColor: Colors.white,
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
        )
      ],
    );
  }

  String getText({required BookModel bookModel}) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Free preview';
    }
  }
}
