import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final int index;

  const NewsCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final titles = [
      "Tech Giant Unveils Revolutionary AI Chip",
      "New Study Reveals Daily Walks Can Significantly Improve Mental Health",
      "Global Climate Summit Reaches Historic Agreement",
      "SpaceX Successfully Launches New Satellite Constellation",
      "Breakthrough in Quantum Computing Research",
      "Renewable Energy Surpasses Fossil Fuels in Europe",
    ];

    final authors = [
      "Craig Bator",
      "Haylie Donin",
      "Marcus Rodriguez",
      "Emma Thompson",
      "David Kim",
      "Lisa Chen",
    ];

    final categories = [
      "Technology",
      "Health",
      "Environment",
      "Science",
      "Technology",
      "Health",
    ];

    final descriptions = [
      "A revolutionary new AI chip that promises to transform the computing industry with unprecedented performance and efficiency.",
      "Research shows that just 30 minutes of daily walking can reduce stress and improve overall mental well-being.",
      "World leaders agree on ambitious targets to combat climate change and transition to clean energy.",
      "The latest satellite launch brings global internet coverage one step closer to reality.",
      "Scientists achieve quantum supremacy in solving complex mathematical problems.",
      "Europe leads the world in renewable energy adoption, setting an example for other continents.",
    ];

    final images = [
      "https://picsum.photos/400/300?random=1",
      "https://picsum.photos/400/300?random=2",
      "https://picsum.photos/400/300?random=3",
      "https://picsum.photos/400/300?random=4",
      "https://picsum.photos/400/300?random=5",
      "https://picsum.photos/400/300?random=6",
    ];

    final i = index % titles.length;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                images[i],
                fit: BoxFit.cover,
                errorBuilder:
                    (_, __, ___) => Container(
                      color: Colors.grey.shade200,
                      child: const Icon(
                        Icons.image,
                        size: 50,
                        color: Colors.grey,
                      ),
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        authors[i],
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        categories[i],
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  titles[i],
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    height: 1.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Text(
                  descriptions[i],
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                    height: 1.4,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      "10 July 2024",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 12,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "•",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "2 min read",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 12,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.bookmark_border, size: 20),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
