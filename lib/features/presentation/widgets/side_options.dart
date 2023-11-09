import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_f/core/platform.dart';
import 'package:test_f/core/svg_icons_constans.dart';
import 'package:test_f/core/temp_vars.dart';
import 'package:test_f/features/presentation/widgets/comment.dart';
import 'package:test_f/features/presentation/widgets/comment_input.dart';

class SideOptionsWidget extends StatefulWidget {
  @override
  _SideOptionsWidgetState createState() => _SideOptionsWidgetState();
}

class _SideOptionsWidgetState extends State<SideOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            // Handle bookmark icon press
          },
          icon: Image.asset('assets/images/u.png'),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {
            // Handle bookmark icon press
          },
          icon: SvgPicture.asset('assets/icons/b.svg'),
         
        ),
        IconButton(
          onPressed: () {
            _showBottomSheet(context);
          },
          icon: SvgPicture.string(message_icon),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {
            // Handle favorite icon press
          },
          icon: SvgPicture.string(favorite_icon),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {
            // Handle share icon press
          },
          icon: SvgPicture.string(share_icon),
          color: Colors.white,
        ),
      ],
    );
  }

   void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allow the content to take full height
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          height: MediaQuery.of(context).size.height * 0.75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            border: Border.all(
              color: const Color(0xFFC4C4C4),
              width: 0.5,
            ),
            color: Colors.white,
          ),
          child: Column(
            children: [
             Expanded(
                child: ListView.builder(
                 itemCount: mockComments.length,
      itemBuilder: (context, index) {
        CommentWidget comment = mockComments[index];
        return CommentWidget(
          userName: comment.userName,
          name: comment.name,
          userImage: comment.userImage,
          comment: comment.comment,
          messageIconPressed: comment.messageIconPressed,
          likeIconPressed: comment.likeIconPressed,
          flagIconPressed: comment.flagIconPressed,
          hour: comment.hour,
          viewRepliesPressed: comment.viewRepliesPressed, isReplay: true,
        );
      },
                 
                ),
                
              ), Divider(),
               CommentInputWidget(),
            ],
          ),
        );
      },
    );
  }
}
