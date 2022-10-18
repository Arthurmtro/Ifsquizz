import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ifsquizz/services/models.dart';
import 'package:ifsquizz/services/auth.dart';
import 'package:rxdart/rxdart.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Read all documents from the topics collection
  Future<List<Topic>> getTopics() async {
    var ref = _db.collection('topics');
    var snapshot = await ref.get();

    var data = snapshot.docs.map((s) => s.data());
    var topics = data.map((d) => Topic.fromJson(d));

    return topics.toList();
  }

  // Retrieve a single quiz document
  Future<Quiz> getQuiz(String id) async {
    var ref = _db.collection('quizzes').doc(id);
    var snapshot = await ref.get();

    var data = snapshot.data();
    return Quiz.fromJson(data ?? {});
  }

  // Listen to current user's report document in Firestore
  Stream<Report> streamReport() {
    return AuthService().userStream.switchMap((user) {
      if (user == null) return Stream.fromIterable([Report()]);

      var ref = _db.collection('reports').doc(user.uid);
      return ref.snapshots().map((doc) => Report.fromJson(doc.data() ?? {}));
    });
  }

  // Update the current user's report document after quizz completed
  Future<void> updateUserReport(Quiz quiz) {
    var user = AuthService().user!;

    var ref = _db.collection('report').doc(user.uid);

    var data = {
      'total': FieldValue.increment(1),
      'topics': {
        quiz.topic: FieldValue.arrayUnion([quiz.id]),
      }
    };

    return ref.set(data, SetOptions(merge: true));
  }
}
