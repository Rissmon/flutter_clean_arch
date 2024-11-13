import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/domain/model/movie_item.dart';

class MovieListItemWidget extends StatelessWidget {
  final MovieItem movieItem;

  const MovieListItemWidget(this.movieItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (movieItem.thumbnail != null)
          Image.network(
            movieItem.thumbnail ?? "",
            width: 100,
            height: 100,
          ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(movieItem.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold)),
              Text(movieItem.description),
            ],
          ),
        ),
      ],
    );
  }
}
