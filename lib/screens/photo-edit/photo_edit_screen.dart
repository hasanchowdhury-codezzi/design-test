import 'package:design_test/common/customElevatedButton.dart';
import 'package:design_test/common/custom_scaffold.dart';
import 'package:design_test/screens/photo-edit/components/custom_editor_tool.dart';
import 'package:design_test/screens/photo-edit/components/custom_effect_tool.dart';
import 'package:design_test/utils/constants.dart';
import 'package:design_test/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PhotoEditScreen extends StatelessWidget {
  const PhotoEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> bottomImageUrl = [
      AppImages.bottomImage1,
      AppImages.bottomImage2,
      AppImages.bottomImage3,
      AppImages.bottomImage4,
      AppImages.bottomImage5,
      AppImages.bottomImage6,
    ];
    return CustomScaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions(context).scaleWidth(8)),
      child: Column(
        children: [
          Dimensions(context).scaleHeight(20).toHeight,
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage(AppImages.photo),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(Dimensions(context).scaleHeight(18)),
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
                          verticalPadding: Dimensions(context).scaleHeight(8),
                          horizontalPadding: Dimensions(context).scaleWidth(20),
                          useGradient: false,
                          backGroundColor: Colors.white,
                          textColor: Colors.black,
                        )
                      ],
                    ),
                    Dimensions(context).scaleHeight(30).toHeight,
                    const CustomEditorTool(
                      title: 'Adjust',
                      imgUrl: AppImages.adjustIcon,
                    ),
                    Dimensions(context).scaleHeight(20).toHeight,
                    CustomEditorTool(
                      imgUrl: AppImages.magicIcon,
                      imageSize: Dimensions(context).scaleHeight(34),
                    ),
                    const CustomEditorTool(
                      title: 'Adjust',
                      imgUrl: AppImages.presetIcon,
                    ),
                    Dimensions(context).scaleHeight(20).toHeight,
                    const CustomEditorTool(
                      title: 'Adjust',
                      imgUrl: AppImages.stickerIcon,
                    ),
                    Dimensions(context).scaleHeight(20).toHeight,
                    const CustomEditorTool(
                      title: 'Adjust',
                      imgUrl: AppImages.musicIcon,
                    ),
                    Dimensions(context).scaleHeight(20).toHeight,
                    const CustomEditorTool(
                      title: 'Adjust',
                      imgUrl: AppImages.textIcon,
                    ),
                    Dimensions(context).scaleHeight(20).toHeight,
                    const CustomEditorTool(
                      title: 'Adjust',
                      imgUrl: AppImages.canvasIcon,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const CustomEffectTool(
                          title: "Trends",
                          imgUrl: AppImages.trends,
                        ),
                        Dimensions(context).scaleWidth(20).toWidth,
                        const CustomEffectTool(
                          title: "Marili",
                          imgUrl: AppImages.marali,
                        ),
                        Dimensions(context).scaleWidth(20).toWidth,
                        const CustomEffectTool(
                          title: "KOREAN",
                          imgUrl: AppImages.korean,
                        ),
                        Dimensions(context).scaleWidth(20).toWidth,
                        const CustomEffectTool(
                          title: "Spring",
                          imgUrl: AppImages.spring,
                        ),
                        Dimensions(context).scaleWidth(20).toWidth,
                        const CustomEffectTool(
                          title: "Summer",
                          imgUrl: AppImages.summer,
                        ),
                        Dimensions(context).scaleWidth(20).toWidth,
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
                Positioned(
                  left: Dimensions(context).scaleWidth(10),
                  child: SizedBox(
                    height: Dimensions(context).scaleHeight(60),
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (contest, index) {
                        return Image.asset(
                          bottomImageUrl[index],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 3,
                        );
                      },
                      itemCount: bottomImageUrl.length,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: Dimensions(context).scaleWidth(50),
                    height: Dimensions(context).scaleHeight(50),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 50,
                          offset: Offset(10, 10),
                        ),
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppImages.menuIcon,
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
