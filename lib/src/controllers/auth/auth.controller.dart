import 'package:get/get.dart';

import '../../models/user/user.model.dart';

class AuthController extends GetxController {
  static Rx<UserModel> user = UserModel().obs;

  RxBool get hasUser => (user.value.id != null).obs;

  @override
  void onInit() {
    getUser();
    super.onInit();
  }

  // Simulate fetching user data
  Future<void> getUser() async {
    await Future.delayed(
        const Duration(seconds: 1)); // Simulating API call delay
    user.value = UserModel.fromJson(_user); // Assign mock user data
  }
}

const _user = {
  "id": "123456",
  "name": "John Doe",
  "email": "johndoe@example.com",
  "avatarUrl": "https://example.com/avatar/johndoe.jpg",
  "createdAt": "2024-09-16T12:34:56.789Z",
  "favoriteMovieIds": ["tt0111161", "tt0068646", "tt0468569", "tt1375666"]
};
