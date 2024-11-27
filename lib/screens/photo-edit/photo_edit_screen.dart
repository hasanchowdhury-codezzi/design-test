import 'package:design_test/shared/custom_scaffold.dart';
import 'package:flutter/material.dart';

class PhotoEditScreen extends StatelessWidget {
  const PhotoEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle, // Use BoxShape.rectangle for rounded rectangle
              borderRadius: BorderRadius.circular(25), // Adjust for roundness
              image: const DecorationImage(
                image: AssetImage('assets/images/image.png'), // Your image asset
                fit: BoxFit.cover, // Adjust how the image fits
              ),
            ),
            // child: ,
          ),
        ),
        const Expanded(child: SizedBox())
      ],
    ));
  }
}
