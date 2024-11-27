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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const CustomEffectTool(
                          title: "Trends",
                          imgUrl: 'assets/images/trends.png',
                        ),
                        const SizedBox(width: 20),
                        const CustomEffectTool(
                          title: "Trends",
                          imgUrl: 'assets/images/marali.png',
                        ),
                        const SizedBox(width: 20),
                        const CustomEffectTool(
                          title: "Trends",
                          imgUrl: 'assets/images/korean.png',
                        ),
                        const SizedBox(width: 20),
                        const CustomEffectTool(
                          title: "Trends",
                          imgUrl: 'assets/images/spring.png',
                        ),
                        const SizedBox(width: 20),
                        const CustomEffectTool(
                          title: "Trends",
                          imgUrl: 'assets/images/summer.png',
                        ),
                        const SizedBox(width: 20),
                        SvgPicture.asset('assets/images/search_icon.svg'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Expanded(
                // child: ListView.separated(
                //     itemBuilder: (contest, index) {
                //       return Image.asset('assets/images/marali.png');
                //     },
                //     separatorBuilder: (context, index) {
                //       return const SizedBox();
                //     },
                //     itemCount: 10),
                // )
                Positioned(
                  left: 10,
                  child: SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (contest, index) {
                        return Image.asset(
                          'assets/images/bottom_image2.png',
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 3,
                        );
                      },
                      itemCount: 10,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 50, // Diameter of the circle
                    height: 50, // Diameter of the circle
                    decoration: const BoxDecoration(
                      color: Colors.black, // Background color
                      shape: BoxShape.circle, // Makes the container circular
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black, // Shadow color
                          blurRadius: 50, // Spread of the shadow
                          offset: Offset(10, 10), // Shadow position (horizontal, vertical)
                        ),
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/menu_icon.svg',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class CustomEffectTool extends StatelessWidget {
  final String title;
  final String imgUrl;
  const CustomEffectTool({
    super.key,
    required this.title,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imgUrl,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
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
