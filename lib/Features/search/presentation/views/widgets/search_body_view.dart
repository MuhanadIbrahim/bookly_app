import 'package:bookly_app/Features/home/presentation/views/widgets/custom_search_textFiled.dart';
import 'package:flutter/material.dart';

class SearchBodyView extends StatelessWidget {
  const SearchBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.0),
      child:  Column(
        children: [
          CustomSearchTextField(),
        ],
      ),
    );
  }
}
