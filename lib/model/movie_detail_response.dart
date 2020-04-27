import 'movie_detail.dart';

class MovieDetailResponse {
  final MovieDetail movieDetail;
  final String error;

  MovieDetailResponse(this.movieDetail, this.error);

  MovieDetailResponse.fromJson(Map<String, dynamic> json)
      : movieDetail = MovieDetail.fromJson(json),
        error = "";

  MovieDetailResponse.withError(String errorValue)
      : movieDetail = MovieDetail(null, null, null, null, null, "", null),
        error = errorValue;
}