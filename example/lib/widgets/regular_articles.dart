import 'package:flutter/material.dart';
import 'package:responsive_breakpoint/responsive_breakpoint.dart';
import '../news_card.dart';

class RegularArticles extends StatelessWidget {
  const RegularArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Articles",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 16),
        ResponsiveFlex(
          columns: ResponsiveValue(xs: 1, md: 2, lg: 3),
          spacing: 24,
          runSpacing: 24,
          children: List.generate(6, (i) => NewsCard(index: i)),
        ),
      ],
    );
  }
}
