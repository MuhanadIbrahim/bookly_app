import 'package:bookly_app/Features/home/presentation/views/widgets/custom_search_textFiled.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/search_resluat_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBodyView extends StatelessWidget {
  const SearchBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: SizedBox(),
          ),
          CustomSearchTextField(),
          SizedBox(
            height: 10,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(child: SearchResualtListView())
        ],
      ),
    );
  }
}
