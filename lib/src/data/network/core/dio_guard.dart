import 'package:dio/dio.dart';
import 'package:movie_finder/src/core/utils/result.dart';

Future<Result<T>> dioGuard<T>(Future<T> Function() call) async {
  try {
    return Result.Success(await call());
  } on DioException catch (e) {
    return Result.Failure(
      Exception(
        'HTTP ${e.response?.statusCode}: ${e.message}\n${e.response?.data}',
      ),
    );
  } catch (e) {
    return Result.Failure(Exception('Error: $e'));
  }
}
