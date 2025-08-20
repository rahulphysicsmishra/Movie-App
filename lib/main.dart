import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/movie_provider.dart';

void main() {

  runApp(ChangeNotifierProvider(create: (BuildContext context)=> MovieProvider(),
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    final movies = Provider.of<MovieProvider>(context).loadMovies();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(movies[index]),
              leading: CircleAvatar(
                child: Text(movies[index][0]),
            )
            );
        }),
      ),
    );
  }
}