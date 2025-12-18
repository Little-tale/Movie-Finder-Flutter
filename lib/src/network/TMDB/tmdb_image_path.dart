final String _tmdbImageBase = 'https://image.tmdb.org/t/p/';

String tmdbPosterPath({required String path, int width = 500}) {
  return '$_tmdbImageBase/w$width$path';
}

String tmdbBackDropUrl({required String path, int width = 780}) {
  return '$_tmdbImageBase/w$width$path';
}
