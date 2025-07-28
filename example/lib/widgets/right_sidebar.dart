import 'package:flutter/material.dart';

class RightSidebar extends StatelessWidget {
  const RightSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const CuratedPicks(),
            const SizedBox(height: 32),
            const CategoriesSection(),
            const SizedBox(height: 32),
            const RecommendedFollows(),
          ],
        ),
      ),
    );
  }
}

class CuratedPicks extends StatelessWidget {
  const CuratedPicks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Curated Picks",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 16),
        CuratedArticle(
          author: "Alfredo Lubin",
          category: "Technology",
          title: "New Solar Panel Technology Increases Efficiency by 30%",
          date: "11 July 2024",
          readTime: "2 min read",
          imageUrl: "https://picsum.photos/100/100?random=7",
        ),
        const SizedBox(height: 16),
        CuratedArticle(
          author: "Sarah Johnson",
          category: "Health",
          title: "The Science Behind Morning Routines and Productivity",
          date: "10 July 2024",
          readTime: "3 min read",
          imageUrl: "https://picsum.photos/100/100?random=8",
        ),
        const SizedBox(height: 16),
        CuratedArticle(
          author: "Mike Chen",
          category: "Finance",
          title: "Investment Strategies for the Digital Age",
          date: "9 July 2024",
          readTime: "4 min read",
          imageUrl: "https://picsum.photos/100/100?random=9",
        ),
      ],
    );
  }
}

class CuratedArticle extends StatelessWidget {
  final String author;
  final String category;
  final String title;
  final String date;
  final String readTime;
  final String imageUrl;

  const CuratedArticle({
    super.key,
    required this.author,
    required this.category,
    required this.title,
    required this.date,
    required this.readTime,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            width: 60,
            height: 60,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder:
                  (_, __, ___) => Container(
                    color: Colors.grey.shade200,
                    child: const Icon(Icons.image, color: Colors.grey),
                  ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$author • $category",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.black87,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                "$date • $readTime",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        IconButton(
          icon: const Icon(Icons.bookmark_border, size: 20),
          onPressed: () {},
        ),
      ],
    );
  }
}

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            CategoryTag("Fashion"),
            CategoryTag("Politics"),
            CategoryTag("Entertainment"),
            CategoryTag("Sports"),
            CategoryTag("Technology"),
            CategoryTag("Finance"),
            CategoryTag("Health & Wellness"),
            CategoryTag("Science"),
            CategoryTag("Lifestyle"),
          ],
        ),
        const SizedBox(height: 12),
        TextButton(
          onPressed: () {},
          child: const Text(
            "View More Categories",
            style: TextStyle(
              color: Color(0xFF6B46C1),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class CategoryTag extends StatelessWidget {
  final String label;

  const CategoryTag(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey.shade700,
          fontWeight: FontWeight.w500,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class RecommendedFollows extends StatelessWidget {
  const RecommendedFollows({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommended Follows",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 16),
        FollowItem(
          name: "Haylie Botosh",
          imageUrl: "https://picsum.photos/50/50?random=10",
        ),
        const SizedBox(height: 12),
        FollowItem(
          name: "Alex Thompson",
          imageUrl: "https://picsum.photos/50/50?random=11",
        ),
      ],
    );
  }
}

class FollowItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  const FollowItem({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(imageUrl),
          onBackgroundImageError: (_, __) {},
          child: Text(
            name[0],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w600),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFF6B35),
            foregroundColor: Colors.white,
            minimumSize: const Size(80, 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Text("Follow +"),
        ),
      ],
    );
  }
}
