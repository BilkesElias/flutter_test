import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CommentInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            // Replace with the actual image path
            backgroundImage: AssetImage('assets/images/user.png'),
            radius: 20,
          ),
          SizedBox(width: 16),
          Expanded(
            child: TextField(
              
              decoration: InputDecoration(
                
                hintText: '   Add a comment...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(34),
                ),
          
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/icons/emoji.svg',),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/icons/send.svg'),
            ),
                // contentPadding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0), // Set the padding
                
              ),
            ),
          ),
         
         
        ],
      ),
    );
  }
}
