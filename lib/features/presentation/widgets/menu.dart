import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_f/core/svg_icons_constans.dart';


class MenuContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 150, // Adjust the width based on your menu content
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
        border: Border.all(
          color: Color(0xFFAEA6A6),
          width: 0.3,
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Example menu items
          MenuItem(icon: SvgPicture.string(post_icon),        
           label: 'Post a Seequl'),
          MenuItem(icon: SvgPicture.string(favorite_icon2),label: 'View your likes'),
          MenuItem(icon: SvgPicture.string(rotate_icon), label: 'Your Seequl posts'),
          MenuItem(icon: SvgPicture.string(bookmark_icon2), label: 'Reference contribution'),
          MenuItem(icon: SvgPicture.string(hashtag_icon), label: 'Hashtag challenges'),
          MenuItem(icon: SvgPicture.string(notification_icon), label: 'Notifications'),
          MenuItem(icon: SvgPicture.string(about_icon), label: 'About SeeQul'),
          // Add more menu items as needed
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  
  final SvgPicture icon;
  final String label;

  const MenuItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        children: [
          IconButton(icon: icon,onPressed: (){},),
          SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }
}