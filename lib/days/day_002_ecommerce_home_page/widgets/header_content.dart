import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        leading: Image.asset('assets/images/avatar.png'),
        title: Text('صباح الخير ', style: TextStyle(color: Colors.grey)),
        subtitle: Text(
          'أحمد مصطفى',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        trailing: SvgPicture.asset('assets/svgs/notification_button.svg', height: 40),
      ),
    );
  }
}
