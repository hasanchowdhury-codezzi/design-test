import 'package:flutter/material.dart';

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
      height: 70,
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
          final List<IconData> icons = [
            Icons.home,
            Icons.layers,
            Icons.access_time,
            Icons.person,
          ];

          return GestureDetector(
            onTap: () => onTap(index), // Call the function when tapped
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: currentIndex == index
                    ? Colors.blue.withOpacity(0.2) // Active background
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                icons[index],
                size: 30,
                color: currentIndex == index
                    ? Colors.blueAccent // Active icon color
                    : Colors.grey, // Inactive icon color
              ),
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
