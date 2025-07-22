import 'package:flutter/material.dart';
import 'routes.dart';

class CategoryCard extends StatefulWidget {
  final String categoryName;
  final String imagePath;
  const CategoryCard({
    super.key,
    required this.categoryName,
    required this.imagePath,
  });
  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 12, top: 0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              final WidgetBuilder? screenBuilder =
                  appRoutes[widget.categoryName];

              if (screenBuilder != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: screenBuilder),
                );
              } else {
                print('Route for ${widget.categoryName} not found!');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      '${widget.categoryName} are yet to be added!',
                    ),
                  ),
                );
              }
            }, // optional tap
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: const Color.fromARGB(255, 30, 69, 32),
                height: 175, // increased height
                width: 170, // increased width
                child: Card(
                  color: Colors.black54, //Color(0xFFE5D0AC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.imagePath,
                      height: 140, // increased image size
                      width: 140,
                      fit: BoxFit.cover,
                      alignment: Alignment(0, 0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Text(
              widget.categoryName,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Breath_Demo',
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
