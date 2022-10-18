import 'package:ifsquizz/screens/about/about.dart';
import 'package:ifsquizz/screens/home/home.dart';
import 'package:ifsquizz/screens/login/login.dart';
import 'package:ifsquizz/screens/profile/profile.dart';
import 'package:ifsquizz/screens/topics/topics.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};
