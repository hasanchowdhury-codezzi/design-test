import 'package:design_test/screens/home/model/home_model.dart';
import 'package:flutter/material.dart';

class PopularCustomCard extends StatelessWidget {
  final List<PopularDataModel> productData;
  const PopularCustomCard({
    super.key,
    required this.productData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 218,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: 218,
                child: Stack(
                  // alignment: Alignment.centerLeft,
                  children: [
                    Image.asset(productData[index].imgUrl),
                    Positioned(
                      bottom: 00,
                      left: 25,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Container(
                              width: 120,
                              height: 35,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.3),
                                  )
                                ],
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.3),
                                    Colors.black.withOpacity(0.2),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(75.0),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.1),
                                  width: 1.5,
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.auto_awesome_outlined, color: Colors.white, size: 20),
                                  const SizedBox(width: 8),
                                  Text(
                                    productData[index].cardTitle,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
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
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 8,
            );
          },
          itemCount: productData.length),
    );
  }
}
