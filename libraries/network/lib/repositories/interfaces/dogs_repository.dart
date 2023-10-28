import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'dogs_repository.g.dart';

@RestApi(baseUrl: 'https://dog.ceo/api')
abstract class DogRepository {
  factory DogRepository(Dio dio, {String baseUrl}) = _DogsRepository;

  @GET('/breeds/image/random')
  Future<Response> getRandomDogImage();

  @GET('/breeds/list/all')
  Future<Response> getAllDogsList();

  @GET('/breed/{hound}/images')
  Future<Response> getDogImagesByBreed(@Path('breed') String hound);

  @GET('/breed/{hound}/images')
  Future<Response> getSubBreedImages(@Path('breed') String hound, String subBreed);

  @GET('/breeds/image/random')
  Future<Response> getDogListBySubBreed(@Path('breed') String hound);
}
