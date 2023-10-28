// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dogs_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _DogsRepository implements DogRepository {
  _DogsRepository(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://dog.ceo/api';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Response> getRandomDogImage() async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final data = <String, dynamic>{};
    final result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response<dynamic>>(Options(method: 'GET', extra: extra)
            .compose(_dio.options, '/breeds/image/random',
                queryParameters: queryParameters, data: data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return result;
  }

  @override
  Future<Response> getDogImagesByBreed(String breed) async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final data = <String, dynamic>{};
    final result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response<dynamic>>(Options(method: 'GET', extra: extra)
            .compose(_dio.options, '/breed/$breed/images',
                queryParameters: queryParameters, data: data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return result;
  }

  @override
  Future<Response> getAllDogsList() async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final data = <String, dynamic>{};
    final result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response<dynamic>>(Options(method: 'GET', extra: extra)
            .compose(_dio.options, '/breeds/list/all',
                queryParameters: queryParameters, data: data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return result;
  }

  @override
  Future<Response> getDogListBySubBreed(String breed) async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final data = <String, dynamic>{};
    final result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response<dynamic>>(Options(method: 'GET', extra: extra)
            .compose(_dio.options, '/breed/$breed/list',
                queryParameters: queryParameters, data: data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return result;
  }

  @override
  Future<Response> getSubBreedImages(String breed, String subBreed) async {
    const extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final data = <String, dynamic>{};
    final result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Response<dynamic>>(Options(method: 'GET', extra: extra)
            .compose(_dio.options, '/breed/$breed/$subBreed/images',
                queryParameters: queryParameters, data: data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return result;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
