import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:praktikum_flutter1/modul12/modul/model/post.dart';

class PostsListView extends StatelessWidget {
  const PostsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("All Posts"),
      ),
      body: FutureBuilder<List<Post>>(
        future: _fetchPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Post>? data = snapshot.data;
            return _postsListView(data);
          } else if (snapshot.hasError) {
            return Center(child: Text("${snapshot.error}"));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Future<List<Post>> _fetchPosts() async {
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((post) => Post.fromJson(post)).toList();
    } else {
      throw Exception('Failed to load posts from API');
    }
  }

  ListView _postsListView(List<Post>? data) {
    return ListView.builder(
      itemCount: data!.length,
      itemBuilder: (context, index) {
        return _tile(
          context,
          data[index].title,
          data[index].body,
          Icons.article,
        );
      },
    );
  }

  ListTile _tile(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
  ) =>
      ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.green[600],
        ),
        onTap: () {
          final snackBar = SnackBar(
            duration: const Duration(seconds: 1),
            content: Text("Anda memilih: $title"),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      );
}
