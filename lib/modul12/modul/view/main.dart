import 'package:flutter/material.dart';
import 'package:praktikum_flutter1/modul12/modul/view/album_by_id_view.dart';
import 'package:praktikum_flutter1/modul12/modul/view/post_all_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo API',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(
              title: "Hellow",
            ),
        '/all': (context) => PostsListView(),
        '/id': (context) => AlbumById(),
        // Add more routes as needed
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/id'),
              child: const Text(
                'Album By ID',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(),
              onPressed: () => Navigator.pushNamed(context, '/all'),
              child: const Text(
                'All Albums',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
