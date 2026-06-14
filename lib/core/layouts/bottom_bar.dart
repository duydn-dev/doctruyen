import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DocTruyenBottomBar extends StatelessWidget {
  const DocTruyenBottomBar({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(index: 0, icon: Icons.home_rounded, label: 'Trang chủ'),
            _buildNavItem(index: 1, icon: Icons.search_rounded, label: 'Tìm kiếm'),
            _buildNavItem(index: 2, icon: Icons.person_rounded, label: 'Hồ sơ'),
            _buildNavItem(index: 3, icon: Icons.settings_rounded, label: 'Cài đặt'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required IconData icon,
    required String label,
  }) {
    // Lấy trạng thái active trực tiếp từ tabsRouter truyền vào
    final isSelected = tabsRouter.activeIndex == index;
    final activeColor = Colors.blue.shade700;
    final inactiveColor = Colors.grey.shade400;

    return GestureDetector(
      onTap: () => tabsRouter.setActiveIndex(index),
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? activeColor.withValues(alpha: 0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        //menu ngang
        child: Row(
          children: [
            Icon(icon, color: isSelected ? activeColor : inactiveColor, size: 24),
            if (isSelected) ...[
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(color: activeColor, fontWeight: FontWeight.w500, fontSize: 13),
              ),
            ],
          ],
        ),
      ),
    );
  }
}