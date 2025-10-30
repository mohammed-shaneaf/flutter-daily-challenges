import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToggleButton extends StatelessWidget {
  final bool isLogin;
  final ValueChanged<bool> onToggle;

  const ToggleButton({
    super.key,
    required this.isLogin,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48.h,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              _buildTab(
                title: 'Sign Up',
                active: !isLogin,
                onTap: () => onToggle(false),
              ),
              _buildTab(
                title: 'Log In',
                active: isLogin,
                onTap: () => onToggle(true),
              ),
            ],
          ),
        ),
        32.verticalSpace,
      ],
    );
  }

  Widget _buildTab({
    required String title,
    required bool active,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: active ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: active ? Colors.blue : Colors.grey[600],
            ),
          ),
        ),
      ),
    );
  }
}
