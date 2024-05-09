// import 'package:namer_app/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:namer_app/detail.dart';
// import 'package:namer_app/other.dart';
// import 'package:namer_app/signup/signup.dart';


//Routes
// const String HOME = '/';
// const String LOGIN = '/login';
const String DETAIL = '/detail';

const Route_urls = ['/detail',];

const Routes = ['Detail', ];

const Character_link = [
    'images/character/IMG_9209.png',
    'images/character/IMG_9211.png',
    'images/character/IMG_9213.png',
    'images/character/IMG_9215.png',
    'images/character/IMG_9217.png',
    'images/character/IMG_9219.png',
    'images/character/IMG_9221.png',
    'images/character/IMG_9224.png',
    'images/character/IMG_9302.png',
    'images/character/IMG_9305.png',
    'images/character/IMG_9307.png',
    'images/character/IMG_9309.png',
    'images/character/IMG_9311.png',
    'images/character/IMG_9313.png',
    'images/character/IMG_9315.png',
    'images/character/IMG_9318.png',
    ];
const CharacterChange_link = [
    'images/character/IMG_9210.png',
    'images/character/IMG_9212.png',
    'images/character/IMG_9214.png',
    'images/character/IMG_9216.png',
    'images/character/IMG_9218.png',
    'images/character/IMG_9226.png',
    'images/character/IMG_9222.png',
    'images/character/IMG_9225.png',
    'images/character/IMG_9303.png',
    'images/character/IMG_9304.png',
    'images/character/IMG_9306.png',
    'images/character/IMG_9308.png',
    'images/character/IMG_9310.png',
    'images/character/IMG_9312.png',
    'images/character/IMG_9314.png',
    'images/character/IMG_9317.png',

];
const Background =[
  "images/back/IMG_0084.PNG",
  "images/back/IMG_0097.PNG",
  "images/back/IMG_0103.PNG",
  "images/back/IMG_0090.PNG",
  "images/back/IMG_0104.PNG",
  "images/back/IMG_0092.PNG",
  "images/back/IMG_0094.PNG",
  "images/back/IMG_0100.PNG",
  "images/back/IMG_0086.PNG",
  "images/back/IMG_0085.PNG",
  "images/back/IMG_0091.PNG",
  "images/back/IMG_0087.PNG",
  "images/back/IMG_0088.PNG",
  "images/back/IMG_0095.PNG",
  "images/back/IMG_0089.PNG",
  "images/back/IMG_0093.PNG",


];
Widget makeRoute({required BuildContext context, required String routeName}) {
  final Widget child = _buildRoute(context: context, routeName: routeName);
  return child;
}

Widget _buildRoute({required BuildContext context, required String routeName}) {
  switch (routeName) {
    case DETAIL:
      return DetailScreen();
    // case LOGIN:
    //   return const TestScreen();
    // case SIGNUP:
    //   return const SignupScreen();
    default:
      return DetailScreen();
  }
}

class ScreenArguments {
  final String identifier;
  final String title;
  final String content;

  ScreenArguments(
      {required this.identifier, required this.title, required this.content});
}
