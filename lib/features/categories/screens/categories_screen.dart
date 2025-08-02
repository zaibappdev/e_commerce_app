import 'package:flutter/cupertino.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              'https://i.pinimg.com/736x/2d/95/e5/2d95e5886fc4c65a6778b5fee94a7d59.jpg',
              // Replace with your actual image URL
              height: 75,
              width: 75,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 4),
          Text("Category", style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
