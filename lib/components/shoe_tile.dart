import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;

  ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      // Fix 1: Wrapping content inside SingleChildScrollView to allow scrolling if content overflows
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // shoe pic
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath),
            ),

            // description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                shoe.description,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),

            // price + details
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Fix 3: Using Expanded to make the content adjust within the available space
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // shoe name
                        Text(
                          shoe.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 5),
                        // price
                        Text(
                          '\$' + shoe.price,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Fix 2: Reducing the padding for the plus button to prevent overflow
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: const EdgeInsets.all(10), // Reduced padding from 20 to 10
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


