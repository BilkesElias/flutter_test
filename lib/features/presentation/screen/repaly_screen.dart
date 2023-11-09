import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_f/core/platform.dart';
import 'package:test_f/core/temp_vars.dart';
import 'package:test_f/features/presentation/widgets/comment.dart';
import 'package:test_f/features/presentation/widgets/comment_input.dart';

class Reply extends StatefulWidget {
  const Reply({super.key, required String comment});

  @override
  State<Reply> createState() => _ReplyState();
}

class _ReplyState extends State<Reply> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Reply',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
            onPressed: () {
              Navigator.pop(context); // This will go back to the previous screen
            },
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(children: [
            CommentWidget(
                userName: '@Kerriyo',
                name: 'Kerry Johns',
                userImage: 'kerry.png',
                comment: comment1,
                messageIconPressed: () {},
                isReplay: false,
                likeIconPressed: () {},
                flagIconPressed: () {},
                hour: '3 hours ago',
                viewRepliesPressed: () {}),
            Row(
              children: [
                SizedBox(
                  width: Screen(context).width * 0.2,
                ),
                const Text(
                  "Reply to ",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    height: 1.8, // Equivalent to line-height: 180%
                  ),
                ),
                Text(
                  "John Doe @JohntheD",
                  style: TextStyle(
                    color: Color(0xFFFFBB00), // Hex color #FB0
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    height: 1.8, // Equivalent to line-height: 180%
                  ),
                )
              ],
            ),
            CommentInputWidget()
          ]),
        ),
      ),
    );
  }
}
