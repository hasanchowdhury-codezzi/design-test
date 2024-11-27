import 'package:design_test/shared/customElevatedButton.dart';
import 'package:design_test/shared/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                    const SizedBox(height: 30),
                    const CustomEditorTool(
                      title: 'Adjust',
                      imgUrl: 'assets/images/adjust_icon.svg',
                    ),
                    const SizedBox(height: 20),
                    const CustomEditorTool(
                      imgUrl: 'assets/images/magic_icon.svg',
                      imageSize: 34,
                    ),
                    // const SizedBox(height: 20),
                    const CustomEditorTool(
                      title: 'Adjust',
                      imgUrl: 'assets/images/preset_icon.svg',
                    ),
                    const SizedBox(height: 20),
                    const CustomEditorTool(
                      title: 'Adjust',
                      imgUrl: 'assets/images/sticker_icon.svg',
                    ),
                    const SizedBox(height: 20),
                    const CustomEditorTool(
                      title: 'Adjust',
                      imgUrl: 'assets/images/music_icon.svg',
                    ),
                    const SizedBox(height: 20),
                    const CustomEditorTool(
                      title: 'Adjust',
                      imgUrl: 'assets/images/text_icon.svg',
                    ),
                    const SizedBox(height: 20),
                    const CustomEditorTool(
                      title: 'Adjust',
                      imgUrl: 'assets/images/canvas_icon.svg',
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const CustomEditorTool(
                          title: 'Adjust',
                          imgUrl: 'assets/images/canvas_icon.svg',
                        ),
                        const CustomEditorTool(
                          title: 'Adjust',
                          imgUrl: 'assets/images/canvas_icon.svg',
                        ),
                        const CustomEditorTool(
                          title: 'Adjust',
                          imgUrl: 'assets/images/canvas_icon.svg',
                        ),
                        const CustomEditorTool(
                          title: 'Adjust',
                          imgUrl: 'assets/images/canvas_icon.svg',
                        ),
                        const CustomEditorTool(
                          title: 'Adjust',
                          imgUrl: 'assets/images/canvas_icon.svg',
                        ),
                        const CustomEditorTool(
                          title: 'Adjust',
                          imgUrl: 'assets/images/canvas_icon.svg',
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 30,
                          ),
                        )
                      ],
                    )
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

class CustomEditorTool extends StatelessWidget {
  final String? title;
  final String imgUrl;
  final double? imageSize;
  const CustomEditorTool({
    super.key,
    this.title,
    required this.imgUrl,
    this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          imgUrl,
          width: imageSize ?? 20,
        ),
        const SizedBox(height: 4),
        Text(
          title ?? '',
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
