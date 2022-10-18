import 'package:flutter/material.dart';
import 'package:ifsquizz/screens/topics/topic_item.dart';
import 'package:ifsquizz/services/firestore.dart';
import 'package:ifsquizz/shared/bottom_nav.dart';
import 'package:ifsquizz/shared/loading.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: FirestoreService().getTopics(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingScreen();
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            var topics = snapshot.data!;

            return Scaffold(
              appBar: AppBar(
                  backgroundColor: Colors.deepPurple,
                  title: const Text("Topics")),
              bottomNavigationBar: const BottomNavBar(),
              body: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20.0),
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                children:
                    topics.map((topic) => TopicItem(topic: topic)).toList(),
              ),
            );
          } else {
            return const Text("No topics found !");
          }
        });
  }
}
