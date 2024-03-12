import 'package:bookly_app/Features/home/presentation/views/widgets/featured_similar_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SmilarBookSection extends StatelessWidget {
  const SmilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: Styles.textStyle14,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        FeaturedSmiliaListView()
      ],
    );
  }
}
