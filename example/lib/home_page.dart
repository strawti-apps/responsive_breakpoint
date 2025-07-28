import 'package:flutter/material.dart';
import 'package:responsive_breakpoint/responsive_breakpoint.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const AppDrawer(),
      appBar: ResponsivePreferredSizeBuilder(
        value: ResponsiveValue(xs: true, md: false),
        builder: (context, showLeading) {
          return AppBar(
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
            title: Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: context.responsive(
                      ResponsiveValue(
                        xs: const Color(0xFFFF6B35),
                        md: Colors.transparent,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.auto_stories,
                    color: context.responsive(
                      ResponsiveValue(xs: Colors.white, md: Color(0xFFFF6B35)),
                    ),
                    size: context.responsive(ResponsiveValue(xs: 20, md: 24)),
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  "Bace",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            automaticallyImplyLeading: showLeading,
            actions: [
              IconButton(icon: const Icon(Icons.search), onPressed: () {}),
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {},
              ),
            ],
          );
        },
      ),
      body: SafeArea(
        child: Row(
          children: [
            /// Left Sidebar (Navigation)
            const ResponsiveVisibility(
              visible: ResponsiveValue(xs: false, md: true),
              child: SideMenu(),
            ),

            /// Main Content Area
            Expanded(
              child: Column(
                children: [
                  /// Subscription Banner
                  const ResponsiveVisibility(
                    visible: ResponsiveValue(xs: false, sm: true),
                    child: SubscriptionBanner(),
                  ),

                  /// Search and Filters
                  const SearchAndFilters(),

                  /// Main Content
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Trending Section
                          const TrendingSection(),
                          const SizedBox(height: 32),

                          /// Regular Articles
                          const RegularArticles(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const ResponsiveVisibility(
              visible: ResponsiveValue(xs: false, lg: true),
              child: RightSidebar(),
            ),
          ],
        ),
      ),
    );
  }
}
