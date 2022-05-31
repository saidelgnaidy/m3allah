import 'package:cloud_firestore/cloud_firestore.dart';

class DP {
  static final FirebaseFirestore _fbi = FirebaseFirestore.instance;

  static final CollectionReference videos = _fbi.collection('videos');

  Future<List<String>> get getPosts async {
    var query = await videos.orderBy('url').get();
    List<String> urls = [];
    for (var doc in query.docs) {
      urls.add(
        doc.get('url'),
      );
    }
    return urls;
  }
}
