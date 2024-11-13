

import 'package:flutter_clean_arch/domain/model/movie_item.dart';

List movies =[
  {
    "rank": 1,
    "title": "The Shawshank Redemption",
    "description":
    "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
    "image":
    "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_QL75_UX380_CR0,1,380,562_.jpg",
    "big_image":
    "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@",
    "genre": ["Drama"],
    "thumbnail":
    "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg",
    "rating": "9.3",
    "id": "top1",
    "year": 1994,
    "imdbid": "tt0111161",
    "imdb_link": "https://www.imdb.com/title/tt0111161"
  },
  {
    "rank": 2,
    "title": "The Godfather",
    "description":
    "The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.",
    "image":
    "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_QL75_UY562_CR8,0,380,562_.jpg",
    "big_image":
    "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_QL75_UY562_CR8,0,380,562_.jpg",
    "genre": ["Crime", "Drama"],
    "thumbnail":
    "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR1,0,45,67_AL_.jpg",
    "rating": "9.2",
    "id": "top2",
    "year": 1972,
    "imdbid": "tt0068646",
    "imdb_link": "https://www.imdb.com/title/tt0068646"
  },
  {
    "rank": 3,
    "title": "The Dark Knight",
    "description":
    "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
    "image":
    "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_QL75_UX380_CR0,0,380,562_.jpg",
    "big_image":
    "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_QL75_UX380_CR0,0,380,562_.jpg",
    "genre": ["Action", "Crime", "Drama"],
    "thumbnail":
    "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg",
    "rating": "9.0",
    "id": "top3",
    "year": 2008,
    "imdbid": "tt0468569",
    "imdb_link": "https://www.imdb.com/title/tt0468569"
  }
];




final List<MovieItem> movieListData = [
  MovieItem(
      rank: 1,
      title: 'Inception',
      description: 'A mind-bending thriller',
      thumbnail: 'image_url',
      rating: 1,
      year: 1998),
  MovieItem(
      rank: 2,
      title: 'The Dark Knight',
      description: 'A dark, gritty superhero tale',
      thumbnail: 'image_url',
      rating: 5,
      year: 2023)
];