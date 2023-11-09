
import 'package:flutter/material.dart';
import 'package:test_f/features/presentation/widgets/comment.dart';

const card_text_content='Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
const card_text_date='27 Oct. 2020 @5:23pm';
const comment1='Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper      amet justo quisque          ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ';

List<CommentWidget> mockComments = [
  CommentWidget(
    userName: '@Kerryjo',
    name: 'Kerry Johns',
    userImage: 'kerry.png',
    comment: 'Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper🤯amet justo quisque♥️😯ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ',
    messageIconPressed: () {
      print('Message icon pressed');
    },
    likeIconPressed: () {
      print('Like icon pressed');
    },
    flagIconPressed: () {
      print('Flag icon pressed');
    },
    hour: '2 hours ago',
    viewRepliesPressed: () {
      print('View replies pressed');
    }, isReplay: false,
  ),
  CommentWidget(
    userName: '@Kerryjo',
    name: 'Kerry Johns',
    userImage: '7.png',
    comment: 'Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper      amet justo duis. ',
    messageIconPressed: () {
      print('Message icon pressed');
    },
    likeIconPressed: () {
      print('Like icon pressed');
    },
    flagIconPressed: () {
      print('Flag icon pressed');
    },
    hour: '1 hour ago',
    viewRepliesPressed: () {
      print('View replies pressed');
    },
    isReplay: false,
  ),
  CommentWidget(
    userName: 'user789',
    name: 'Alice Johnson',
    userImage: '9.png',
    comment: 'Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper🤯amet justo quisque♥️😯ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ',
    messageIconPressed: () {
      print('Message icon pressed');
    },
    likeIconPressed: () {
      print('Like icon pressed');
    },
    flagIconPressed: () {
      print('Flag icon pressed');
    },
    hour: '3 hours ago',
    viewRepliesPressed: () {
      print('View replies pressed');
    }, isReplay: false,
  ),
  CommentWidget(
    userName: 'user101',
    name: 'Bob Anderson',
    userImage: '8.png',
    comment: 'Lorem ipsum dolor sit amet consectetur. Aliquam sagittis ullamcorper🤯amet justo quisque♥️😯ullamcorper volutpat. Donec feugiat diam et tellus in habitant viverra duis. ',
    messageIconPressed: () {
      print('Message icon pressed');
    },
    likeIconPressed: () {
      print('Like icon pressed');
    },
    flagIconPressed: () {
      print('Flag icon pressed');
    },
    hour: '5 hours ago',
    viewRepliesPressed: () {
      print('View replies pressed');
    }, isReplay: false,
  ),
  
];



