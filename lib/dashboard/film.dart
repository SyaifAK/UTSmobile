import 'package:flutter/material.dart';

class Movie {
  final String title;
  final String director;

  Movie(this.title, this.director);
}

class Film extends StatelessWidget {
  final List<Movie> movies = [
    Movie('Movie 1', 'Director 1'),
    Movie('Movie 2', 'Director 2'),
    Movie('Movie 3', 'Director 3'),
    Movie('Movie 4', 'Director 4'),
    Movie('Movie 5', 'Director 5'),
    Movie('Movie 6', 'Director 6'),
    Movie('Movie 7', 'Director 7'),
    Movie('Movie 8', 'Director 8'),
    Movie('Movie 9', 'Director 9'),
    Movie('Movie 10', 'Director 10'),
    Movie('Movie 11', 'Director 11'),
    Movie('Movie 12', 'Director 12'),
    Movie('Movie 13', 'Director 13'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listview Film'),
        ),
        body: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(movies[index].title),
              subtitle: Text(movies[index].director),
              leading: Icon(Icons.movie),
              onTap: () {
                // Implement a function to handle when a movie is tapped.
                // For example, you can navigate to a movie detail page.
              },
            );
          },
        ),
      ),
    );
  }
}
