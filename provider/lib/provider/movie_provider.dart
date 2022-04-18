import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/model/movies.dart';


final List<Movie> initialData = List.generate(50,

 (index) => Movie(
   title: "Movie $index",
   runtime: "${Random().nextInt(100)+60} minutes"
   ),
  
   );


   class MovieProvider with ChangeNotifier{

    //  All movies that will be displayed in homescreen

     final List<Movie> _movies = initialData;

// retrieve all movies

    List<Movie> get movies => _movies;

    // favorite movies list

    final List<Movie> _myList =[];

    // Retrieve favorite movies

    List<Movie> get myList => _myList;

    // Adding the movies to the favorite list

    void addToList(Movie movie){
      _myList.add(movie);
      notifyListeners();
    }

// Removing the movies from favorite list

void removeFromList(Movie movie){
  _myList.remove(movie);
  notifyListeners();
}


   }