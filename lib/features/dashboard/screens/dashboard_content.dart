import 'package:flutter/material.dart';
import '../../categories/screens/categories_screen.dart';
import '../../featured/screens/featured_screen.dart';
import '../../offers/screens/offers_screen.dart';
import '../../products/screens/products_screen.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  Widget sectionLabel(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Row(
            children: const [
              Text(
                'View All',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Icon(Icons.keyboard_arrow_right, size: 16, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sectionLabel("Categories"),
          SizedBox(
            height: 105,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => const CategoriesScreen(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, bottom: 16),
            child: Text(
              'Offers',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: MediaQuery.of(context).size.width * 0.38,
            child: PageView.builder(
              itemCount: 6,
              itemBuilder: (context, index) => const OffersScreen(),
            ),
          ),
          sectionLabel("Hot Products"),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => const ProductsScreen(),
            ),
          ),
          sectionLabel("Featured"),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => const FeaturedScreen(),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
