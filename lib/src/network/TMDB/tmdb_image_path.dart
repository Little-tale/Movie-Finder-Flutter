final String _tmdbImageBase = 'https://image.tmdb.org/t/p/';

String tmdbPosterPath({required String path, int width = 300}) {
  return '$_tmdbImageBase/w$width$path';
}

String tmdbBackDropUrl({required String path, int width = 600}) {
  return '$_tmdbImageBase/w$width$path';
}
