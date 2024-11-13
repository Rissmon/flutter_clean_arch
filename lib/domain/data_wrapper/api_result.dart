abstract class ApiResult<T> {
  const ApiResult();
}

class ApiSuccess<T> extends ApiResult<T> {
  final T data;

  const ApiSuccess(this.data);
}

class ApiFailure<T> extends ApiResult<T> {
  final String error;

  const ApiFailure(this.error);
}
