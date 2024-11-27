import 'package:design_test/shared/customElevatedButton.dart';
import 'package:design_test/shared/custom_scaffold.dart';
import 'package:flutter/material.dart';

class PhotoEditScreen extends StatelessWidget {
  const PhotoEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle, // Use BoxShape.rectangle for rounded rectangle
                borderRadius: BorderRadius.circular(25), // Adjust for roundness
                image: const DecorationImage(
                  image: AssetImage('assets/images/photo.png'), // Your image asset
                  fit: BoxFit.cover, // Adjust how the image fits
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                        GradientButton(
                          onPressed: () {},
                          text: 'Export',
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          )
        ],
      ),
    ));
  }
}
