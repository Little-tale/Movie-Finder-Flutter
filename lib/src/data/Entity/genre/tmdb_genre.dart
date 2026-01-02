import 'package:flutter/widgets.dart';

enum TmdbGenre {
  action(28),
  adventure(12),
  animation(16),
  comedy(35),
  crime(80),
  documentary(99),
  drama(18),
  family(10751),
  fantasy(14),
  history(36),
  horror(27),
  music(10402),
  mystery(9648),
  romance(10749),
  scienceFiction(878),
  tvMovie(10770),
  thriller(53),
  war(10752),
  western(37);

  const TmdbGenre(this.id);
  final int id;

  static final Map<int, TmdbGenre> _byId = {
    for (final g in TmdbGenre.values) g.id: g,
  };

  static TmdbGenre? fromId(int id) => _byId[id];
}

extension TmdbGenreLabel on TmdbGenre {
  String get ko => switch (this) {
    TmdbGenre.action => '액션',
    TmdbGenre.adventure => '모험',
    TmdbGenre.animation => '애니메이션',
    TmdbGenre.comedy => '코미디',
    TmdbGenre.crime => '범죄',
    TmdbGenre.documentary => '다큐멘터리',
    TmdbGenre.drama => '드라마',
    TmdbGenre.family => '가족',
    TmdbGenre.fantasy => '판타지',
    TmdbGenre.history => '역사',
    TmdbGenre.horror => '공포',
    TmdbGenre.music => '음악',
    TmdbGenre.mystery => '미스터리',
    TmdbGenre.romance => '로맨스',
    TmdbGenre.scienceFiction => 'SF',
    TmdbGenre.tvMovie => 'TV 영화',
    TmdbGenre.thriller => '스릴러',
    TmdbGenre.war => '전쟁',
    TmdbGenre.western => '서부',
  };

  String get en => switch (this) {
    TmdbGenre.action => 'Action',
    TmdbGenre.adventure => 'Adventure',
    TmdbGenre.animation => 'Animation',
    TmdbGenre.comedy => 'Comedy',
    TmdbGenre.crime => 'Crime',
    TmdbGenre.documentary => 'Documentary',
    TmdbGenre.drama => 'Drama',
    TmdbGenre.family => 'Family',
    TmdbGenre.fantasy => 'Fantasy',
    TmdbGenre.history => 'History',
    TmdbGenre.horror => 'Horror',
    TmdbGenre.music => 'Music',
    TmdbGenre.mystery => 'Mystery',
    TmdbGenre.romance => 'Romance',
    TmdbGenre.scienceFiction => 'Science Fiction',
    TmdbGenre.tvMovie => 'TV Movie',
    TmdbGenre.thriller => 'Thriller',
    TmdbGenre.war => 'War',
    TmdbGenre.western => 'Western',
  };

  String label(Locale locale) {
    switch (locale.languageCode) {
      case 'ko':
        return ko;
      case 'en':
      default:
        return en;
    }
  }
}
