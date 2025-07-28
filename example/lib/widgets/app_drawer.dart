import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Color(0xFFFF6B35)),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.auto_stories,
                    color: Color(0xFFFF6B35),
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  "Bace",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            selected: true,
          ),
          ListTile(
            leading: const Icon(Icons.headphones),
            title: const Text("Audio Books"),
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text("Saved"),
          ),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text("Read History"),
          ),
          ListTile(
            leading: const Icon(Icons.download),
            title: const Text("Downloaded"),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.trending_up),
            title: const Text("Now Trending"),
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text("Categories"),
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("Following"),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
          ),
          ListTile(leading: const Icon(Icons.help), title: const Text("Help")),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text("Send Feedback"),
          ),
        ],
      ),
    );
  }
}
