import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@Injectable()
class NetworkClient {
  Dio getDioClient() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
    ));
    return dio;
  }
}