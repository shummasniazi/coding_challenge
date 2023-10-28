import 'package:core/response_model/all_dogs_response.dart';
import 'package:core/response_model/dog_sub_breed_images.dart';
import 'package:core/response_model/dogs_by_breed.dart';
import 'package:core/response_model/dogs_sub_breed_list.dart';
import 'package:core/response_model/random_dogs_response.dart';
import '../network_provider.dart';
import 'interfaces/dogs_repository.dart';

class DogRepositoryImp {
  DogRepositoryImp._internal();

  static final DogRepositoryImp _bannerRepositoryImp =
      DogRepositoryImp._internal();

  factory DogRepositoryImp() {
    return _bannerRepositoryImp;
  }

  DogRepository repository = DogRepository(NetworkProvider.instance());

  Future<RandomDogsResponse> getRandomDogImage() async {
    try {
      final response = await repository.getRandomDogImage();

      if (response.data != null) {
        return RandomDogsResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load a random dog image');
      }
    } catch (e) {
      print(e.toString());
      throw Exception('Failed to load a random dog image: $e');
    }
  }

  Future<AllDogsResponse> getAllDogsList() async {
    try {
      final response = await repository.getAllDogsList();
      if (response.data != null) {
        return AllDogsResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  Future<DogsByBreed> getAllDogsByBreed(String breed) async {
    try {
      final response = await repository.getDogImagesByBreed(breed);
      if (response.data != null) {
        return DogsByBreed.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  Future<DogsSubBreedList> getSubBreedList(String breed) async {
    try {
      final response = await repository.getDogListBySubBreed(breed);
      if (response.data != null) {
        return DogsSubBreedList.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  Future<DogsSubBreedImages> getSubBreedImages(String breed) async {
    try {
      final response = await repository.getDogImagesByBreed(breed);
      if (response.data != null) {
        return DogsSubBreedImages.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}
