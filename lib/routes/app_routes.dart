import 'package:flutter/material.dart';
import 'package:sparks/presentation/start_screen/start_screen.dart';
import 'package:sparks/presentation/discussion_forum_screen/discussion_forum_screen.dart';
import 'package:sparks/presentation/chatroom_screen/chatroom_screen.dart';
import 'package:sparks/presentation/invitations_screen/invitations_screen.dart';
import 'package:sparks/presentation/login_signup_screen/login_signup_screen.dart';
import 'package:sparks/presentation/login_screen/login_screen.dart';
import 'package:sparks/presentation/my_ideas_screen/my_ideas_screen.dart';
import 'package:sparks/presentation/profile_screen/profile_screen.dart';
import 'package:sparks/presentation/investors_screen/investors_screen.dart';
import 'package:sparks/presentation/menu_screen/menu_screen.dart';
import 'package:sparks/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String discussionForumScreen = '/discussion_forum_screen';

  static const String chatroomScreen = '/chatroom_screen';

  static const String invitationsScreen = '/invitations_screen';

  static const String loginSignupScreen = '/login_signup_screen';

  static const String loginScreen = '/login_screen';

  static const String myIdeasScreen = '/my_ideas_screen';

  static const String profileScreen = '/profile_screen';

  static const String investorsScreen = '/investors_screen';

  static const String menuScreen = '/menu_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    startScreen: (context) => StartScreen(),
    discussionForumScreen: (context) => DiscussionForumScreen(),
    chatroomScreen: (context) => ChatroomScreen(),
    invitationsScreen: (context) => InvitationsScreen(),
    loginSignupScreen: (context) => LoginSignupScreen(),
    loginScreen: (context) => LoginScreen(),
    myIdeasScreen: (context) => MyIdeasScreen(),
    profileScreen: (context) => ProfileScreen(),
    investorsScreen: (context) => InvestorsScreen(),
    menuScreen: (context) => MenuScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
