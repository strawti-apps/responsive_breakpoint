import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            /// Logo and User Profile
            Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey.shade300,
                          child: const Text(
                            "R",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Rae",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "rae.email@gmail.com",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Navigation Menu
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  MenuSection("Main", [
                    MenuItem(Icons.home, "Home", isSelected: true),
                    MenuItem(Icons.headphones, "Audio Books"),
                    MenuItem(Icons.bookmark, "Saved"),
                    MenuItem(Icons.history, "Read History"),
                    MenuItem(Icons.download, "Downloaded"),
                  ]),
                  const SizedBox(height: 24),
                  MenuSection("Discover", [
                    MenuItem(Icons.trending_up, "Now Trending"),
                    MenuItem(Icons.category, "Categories"),
                    MenuItem(Icons.people, "Following"),
                  ]),
                  const SizedBox(height: 24),
                  MenuSection("App", [
                    MenuItem(Icons.settings, "Settings"),
                    MenuItem(Icons.help, "Help"),
                    MenuItem(Icons.feedback, "Send Feedback"),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const MenuSection(this.title, this.children, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
        ),
        ...children,
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;

  const MenuItem(this.icon, this.title, {this.isSelected = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFFF6B35).withOpacity(0.1) : null,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isSelected ? const Color(0xFFFF6B35) : Colors.grey.shade600,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? const Color(0xFFFF6B35) : Colors.black87,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
