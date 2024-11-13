import 'package:dio/dio.dart';
import 'package:flutter_clean_arch/data/di/network_client.dart';
import 'package:injectable/injectable.dart';

abstract class ApiService {
  Future<dynamic> getData(String url, {Map<String, dynamic>? header});
}

@Injectable(as: ApiService)
class ApiServiceImpl extends ApiService {
  final NetworkClient networkClient;

  ApiServiceImpl(this.networkClient);

  Future<dynamic> getData(String url, {Map<String, dynamic>? header}) async {
    try {
      final response = await networkClient
          .getDioClient()
          .get(url, options: Options(headers: header));
      return response.data;
    } catch (e) {
      throw e; // Propagate the error if request fails
    }
  }
}
