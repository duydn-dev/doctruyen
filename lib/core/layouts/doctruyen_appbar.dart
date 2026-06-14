import 'package:flutter/material.dart';

class DocTruyenAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const DocTruyenAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // Bọc SafeArea để phần header tự động né tai thỏ/status bar
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          // Đổ bóng nhẹ nhàng mềm mại (Soft Shadow)
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Khai báo kích thước mong muốn cho AppBar tự chế này
  @override
  Size get preferredSize => const Size.fromHeight(60);
}