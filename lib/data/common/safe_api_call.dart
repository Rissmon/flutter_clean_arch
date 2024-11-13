// Generic method to handle API responses and map them to UI models
  import '../../domain/data_wrapper/api_result.dart';

Future<ApiResult<List<U>>> safeApiCall<T, U>({
    required Function() api,
    required T Function(Map<String, dynamic>) fromJson,
    required U Function(T) toUiModel,
  }) async {
    try {
      final response = await api();

      if (response is List) {
        final result = response
            .map((data) => fromJson(data as Map<String, dynamic>))
            .map(toUiModel)
            .toList();
        return ApiSuccess(result);
      } else {
        return const ApiFailure("Unexpected response format");
      }
    } catch (e) {
      return ApiFailure("Failed to fetch data: ${e.toString()}");
    }
  }