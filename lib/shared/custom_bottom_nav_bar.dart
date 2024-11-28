import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4), // Shadow under the navbar
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(4, (index) {
          // Icon properties
          final List<SvgPicture> bottomBarImages = [
            SvgPicture.asset(
              'assets/images/home_icon.svg',
              color: Colors.grey,
            ),
            SvgPicture.asset('assets/images/layers_icon.svg'),
            SvgPicture.asset('assets/images/clock_icon.svg'),
            SvgPicture.asset('assets/images/user_icon.svg'),
          ];

          return GestureDetector(
            onTap: () => onTap(index), // Call the function when tapped
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                    gradient: currentIndex == index
                        ? LinearGradient(
                            colors: [const Color(0xFF00E3F5).withOpacity(0.2), const Color(0xFF0058F5).withOpacity(0.2)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )
                        : null,
                    // color: currentIndex == index
                    //     ? Colors.blue.withOpacity(0.2) // Active background
                    //     : Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                            colors: currentIndex == index
                                ? [const Color(0xFF00E3F5), const Color(0xFF0058F5)] // Gradient colors for active icon
                                : [Colors.grey, Colors.grey], // Single color for inactive icon
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds),
                      child: bottomBarImages[index]
                      // Icon(
                      //   icons[index],
                      //   size: 30,
                      //   color: Colors.white, // Set a base color, required by the ShaderMask
                      // ),
                      ),
                ),
                Visibility(
                  visible: currentIndex == index,
                  child: Positioned(
                    bottom: 0,
                    left: 15,
                    child: Container(
                      height: 4, // Divider height
                      width: 40, // Divider width
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF00E3F5), Color(0xFF0058F5)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)), // Rounded edges
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class CustomNavBarItem extends StatelessWidget {
  final bool isActive;
  final IconData icon;

  const CustomNavBarItem({
    super.key,
    required this.isActive,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: isActive
            ? const LinearGradient(
                colors: [
                  Color(0xFF0D47A1), // Dark blue
                  Color(0xFF42A5F5), // Light blue
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            : null,
        color: isActive ? null : Colors.transparent,
        shape: BoxShape.circle,
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ]
            : [],
      ),
      child: Icon(
        icon,
        size: 36,
        color: isActive ? Colors.white : Colors.grey.withOpacity(0.6), // Inactive icon color
      ),
    );
  }
}
