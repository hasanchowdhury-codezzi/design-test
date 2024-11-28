import 'package:design_test/screens/home/components/category_custom_card.dart';
import 'package:design_test/screens/home/components/popular_custom_card.dart';
import 'package:design_test/screens/home/model/home_model.dart';
import 'package:design_test/screens/photo-edit/photo_edit_screen.dart';
import 'package:design_test/shared/customElevatedButton.dart';
import 'package:design_test/shared/custom_app_bar.dart';
import 'package:design_test/shared/custom_bottom_nav_bar.dart';
import 'package:design_test/shared/custom_scaffold.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<PopularDataModel> popularData = [
    PopularDataModel(imgUrl: 'assets/images/popular_image1.png', cardTitle: 'Ai Generate'),
    PopularDataModel(imgUrl: 'assets/images/popular_image2.png', cardTitle: '3D Image'),
    PopularDataModel(imgUrl: 'assets/images/popular_image3.png', cardTitle: 'Ai Generate'),
  ];
  List<CategoryDataModel> categoryData = [
    CategoryDataModel(imgUrl: 'assets/images/category_image1.png', cardTitle: 'Tax to Image'),
    CategoryDataModel(imgUrl: 'assets/images/category_image2.png', cardTitle: '3D To Image'),
    CategoryDataModel(imgUrl: 'assets/images/category_image3.png', cardTitle: 'Generative Fill'),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(),
      bottomNabBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Column(
        children: [
          const SizedBox(height: 60), // height of the appbar
          Expanded(
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: Container(
                      width: double.infinity, // Set the desired width
                      height: 210, // Set the desired height
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle, // Use BoxShape.rectangle for rounded rectangle
                        borderRadius: BorderRadius.circular(25), // Adjust for roundness
                        image: const DecorationImage(
                          image: AssetImage('assets/images/image.png'),
                          fit: BoxFit.cover, // Adjust how the image fits
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Transform Your Photos with AI Magic',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Transform your photos with AI',
                                    style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.7)),
                                  ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  SizedBox(
                                    width: 170,
                                    height: 40,
                                    child: GradientButton(
                                      onPressed: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PhotoEditScreen()));
                                      },
                                      text: 'Explore Features',
                                      verticalPadding: 0,
                                      horizontalPadding: 0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Expanded(
                              flex: 3,
                              child: SizedBox(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Most Popular',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  PopularCustomCard(
                    productData: popularData,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Category',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                   CategoryCustomCard(categoryData: categoryData),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
