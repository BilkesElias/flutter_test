import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_f/core/platform.dart';
import 'package:test_f/core/styles.dart';
import 'package:test_f/features/presentation/screen/repaly_screen.dart';
import 'dart:math';
class CommentWidget extends StatelessWidget {
  final String userName;
  final String name;
  final String userImage;
  final String comment;
  final String hour;
  final VoidCallback messageIconPressed;
  final VoidCallback likeIconPressed;
  final VoidCallback flagIconPressed;
  final VoidCallback viewRepliesPressed;
  final bool isReplay;

  CommentWidget({
    required this.userName,
    required this.name,
    required this.userImage,
    required this.comment,
    required this.messageIconPressed,
    required this.likeIconPressed,
    required this.flagIconPressed,
    required this.hour,
    required this.viewRepliesPressed,
    required this.isReplay
  });

  @override
  Widget build(BuildContext context) {
     final Random random = Random();
 final  x= 1 + random.nextInt(100 - 1 + 1);
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/$userImage'),
            radius: 20,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      userName,
                      style: linkTextStyle,
                    ),
                    const Spacer(),
                    Text(
                      hour,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: Screen(context).width * 0.12,
                    )
                  ],
                ),
                Text(comment),

                !isReplay? SizedBox() : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: SvgPicture.asset(
                                  'assets/icons/replay_icon.svg'),
                              onPressed: (){
                                 Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Reply(comment: comment),
              ),
            );
                              },
                            ),
                            IconButton(
                              icon: SvgPicture.asset(
                                  'assets/icons/like_icon.svg'),
                              onPressed: likeIconPressed,
                            ),
                            IconButton(
                              icon: SvgPicture.asset(
                                  'assets/icons/flag_icon.svg'),
                              onPressed: flagIconPressed,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: viewRepliesPressed,
                          child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    3.0), // Set the border-radius
                                border: Border.all(
                                  color:
                                      Color(0xFFFEF1F1), // Set the border color
                                  width: 0.3, // Set the border width
                                ),
                                color: Color(
                                    0xFFFAFAFA), // Set the background color
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                   Text(

                                    'View $x Replies',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  SvgPicture.asset(
                                      'assets/icons/viewreplaies_arrow.svg')
                                ],
                              )
                              
                              
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
