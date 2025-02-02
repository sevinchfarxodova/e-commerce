import 'package:flutter/cupertino.dart';

class ProductImages extends StatelessWidget {
  const ProductImages({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/top_sel.jpg',
      'assets/images/top_sel.jpg',
      'assets/images/top_sel.jpg'
    ];
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                images[index],
                height: 300,
                width: MediaQuery.of(context).size.width * 0.4,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
