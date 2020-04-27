import 'package:movieapp/model/company.dart';
import 'package:movieapp/model/genre.dart';

class MovieDetail {
  final int id;
  final bool adult;
  final int budget;
  final List<Genre> genres;
  final List<Company> companies;
  final String releaseDate;
  final int runtime;

  MovieDetail(this.id,
         this.adult,
         this.budget,
         this.genres,
         this.companies,
         this.releaseDate,
         this.runtime);

  MovieDetail.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        adult = json["adult"],
        budget = json["budget"],
        genres = (json["genres"] as List).map((i) => new Genre.fromJson(i)).toList(),
        companies = (json["production_companies"] as List).map((i) => new Company.fromJson(i)).toList(),
        releaseDate = json["release_date"],
        runtime = json["runtime"];
}
