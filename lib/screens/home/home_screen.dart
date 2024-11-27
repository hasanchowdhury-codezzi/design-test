import 'package:design_test/screens/home/components/category_custom_card.dart';
import 'package:design_test/screens/home/components/popular_custom_card.dart';
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
              child: Container(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                  top: 0,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: 190,
                                    height: 50,
                                    child: GradientButton(
                                      onPressed: () {
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PhotoEditScreen()));
                                      },
                                      text: 'Explore Features',
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
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Most Popular',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const PopularCustomCard(),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Category',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CategoryCustomCard(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
